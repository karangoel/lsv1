class Light < ActiveRecord::Base

  attr_accessible :color, :topic_id, :student_id, :enrollment_id


  belongs_to :topic
  belongs_to :student
  belongs_to :enrollments
  
  

end
