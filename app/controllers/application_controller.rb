class ApplicationController < ActionController::Base
  protect_from_forgery
  private

  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end
  
  helper_method :current_student

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_student.nil?
  end



private
def load_topic
  @topic = Topic.where(:current_topic => true).first
end

private
def load_signals
  @light = Light.new(:topic_id  => @topic.id, :student_id => current_student.id)
end
  
end
