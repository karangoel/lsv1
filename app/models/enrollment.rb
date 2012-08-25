class Enrollment < ActiveRecord::Base
  attr_accessible :course_id, :student_id
  belongs_to :student
  belongs_to :course
  has_many :lights
end

