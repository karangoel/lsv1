class Student < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :courses
  has_many :topics, :through => :courses
  has_many :signals, :through => :topics
end
