class LightsController < ApplicationController
  before_filter :authorize, only: [:edit, :update]
  before_filter :load_topic, only: :new

  # GET /lights
  # GET /lights.json
  def index
    @lights = Light.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lights }
    end
  end

  # GET /lights/1
  # GET /lights/1.json
  def show
    @light = Light.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @light }
    end
  end

  # GET /lights/new
  # GET /lights/new.json
  def new
    @light = Light.new(:topic_id  => @topic.id, :student_id => current_student.id)
        respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @light }
    end
  end

  # GET /lights/1/edit
  def edit
    @light = Light.find(params[:id])
  end

  # POST /lights
  # POST /lights.json
  def create
    # raise params.inspect
    @light = Light.new(params[:light])    

    respond_to do |format|
      if @light.save
        format.html { redirect_to :action=>"show", :controller=>"students" }
        format.json { render json: @light, status: :created, location: @light }
      else
        format.html { render action: "new" }
        format.json { render json: @light.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lights/1
  # PUT /lights/1.json
  def update
    @light = Light.find(params[:id])
    @light.topic_id = params[:topic_id]
    @light.enrollment_id = params[:enrollment_id]
    @light.student_id = params[:student_id]

    respond_to do |format|
      if @light.update_attributes(params[:light])
        format.html { redirect_to @light, notice: 'Light was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @light.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lights/1
  # DELETE /lights/1.json
  def destroy
    @light = Light.find(params[:id])
    @light.destroy

    respond_to do |format|
      format.html { redirect_to lights_url }
      format.json { head :no_content }
    end
  end
end
