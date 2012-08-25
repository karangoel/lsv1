class Light < ActiveRecord::Base
  attr_accessible :color, :topic_id
  belongs_to :topic
  belongs_to :course, :through => :topic
  belongs_to :student, :through => :course
end
