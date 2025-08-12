class AddNameToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
  end
end
