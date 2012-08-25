class Light < ActiveRecord::Base
  attr_accessible :color, :topic_id
  belongs_to :topic
end
