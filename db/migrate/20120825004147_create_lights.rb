class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.string :color
      t.integer :topic_id

      t.timestamps
    end
  end
end
