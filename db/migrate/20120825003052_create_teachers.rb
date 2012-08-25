class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.integer :teacher_id

      t.timestamps
    end
  end
end
