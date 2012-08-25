class Student < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :enrollments
  has_many :courses, :through => :enrollments
  has_many :topics, :through => :courses
  has_many :lights, :through => :topics
end
