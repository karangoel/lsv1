class AddEnrollmentIdToLight < ActiveRecord::Migration
  def change
    add_column :lights, :enrollment_id, :integer
  end
end
