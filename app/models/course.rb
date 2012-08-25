class Course < ActiveRecord::Base
  attr_accessible :section, :teacher_id, :title, :student_id
  belongs_to :teacher
  belongs_to :student
  has_many :topics
  has_many :signals, :through => :topics
end
