class AddCurrentTopicToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :current_topic, :boolean
  end
end
