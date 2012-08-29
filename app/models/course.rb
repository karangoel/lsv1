class Course < ActiveRecord::Base
  attr_accessible :section, :teacher_id, :title, :student_id
  belongs_to :teacher
  has_many :enrollments
  has_many :students, :through => :enrollments
  has_many :topics
  # has_many :lights, :through => :topics
  
  
  def current_topics
    current = []
    topics.each do |topic|
      current << topic if topic.current_topic == true
    end
    current
  end
  
  def being_taught?
    current_topics.present?
  end
  
end
