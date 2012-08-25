class Topic < ActiveRecord::Base
  attr_accessible :course_id, :name, :current_topic
  belongs_to :course
  has_many :lights
end
