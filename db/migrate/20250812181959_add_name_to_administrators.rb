class AddNameToAdministrators < ActiveRecord::Migration[8.0]
  def change
    change_table :administrators do |t|
      t.string :first_name, default: ""
      t.string :last_name, default: ""
    end
  end
end
