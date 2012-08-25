class Course < ActiveRecord::Base
  attr_accessible :section, :teacher_id, :title
  belongs_to :teacher
  has_many :topics
  has_many :signals, :through => :topics
end
