class CreateLostItems < ActiveRecord::Migration[8.0]
  def change
    create_table :lost_items do |t|
      t.boolean :private_entry
      t.string :name
      t.text :description
      t.string :date_lost
      t.string :location_lost
      t.string :expiration_date

      t.timestamps
    end
  end
end
