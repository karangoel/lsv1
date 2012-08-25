class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :section
      t.integer :teacher_id

      t.timestamps
    end
  end
end
