class AddEmailConstraintToUsers < ActiveRecord::Migration[8.0]
  def change
    add_check_constraint :users, "email LIKE '%@osu.edu'", name: "must_be_osu_email"
  end
end
