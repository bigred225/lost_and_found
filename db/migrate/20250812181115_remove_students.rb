class RemoveStudents < ActiveRecord::Migration[8.0]
  def change
    drop_table :students
  end
end
