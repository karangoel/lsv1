class Teacher < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :courses
  has_many :topics, :through => :courses
  # has_many :lights, :through => :topics
end
