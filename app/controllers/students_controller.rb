class StudentsController < ApplicationController

  before_filter :authorize, only: [:show]
  before_filter :load_topic

  def index
    @students = Student.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  def show
    if params[:id].nil? 
      @student = current_student
    else 
      @student = Student.find params[:id]
    end
      @light = Light.new(:topic_id  => @topic.id, :student_id => current_student.id)
    respond_to do |format|
      format.html
      format.json { render json: @student }
    end
  end

  def new
    @student = Student.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

  def edit
    @student = Student.find(params[:id])
  end
  def create
    @student = Student.new(params[:student])
    respond_to do |format|
      if @student.save
        session[:student_id] = @student.id
        redirect_to root_url, notice: "Thank you for signing up!"
      else
        format.html { render action: "new" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end



end
