class AddStudentIdToLight < ActiveRecord::Migration
  def change
    add_column :lights, :student_id, :integer
  end
end
