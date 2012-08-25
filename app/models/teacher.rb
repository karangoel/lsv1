class Teacher < ActiveRecord::Base
  attr_accessible :email, :name, :teacher_id
  has_many :courses
  has_many :topics, :through => :courses
  has_many :signals, :through => :topics
end
