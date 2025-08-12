class CreateFoundItems < ActiveRecord::Migration[8.0]
  def change
    create_table :found_items do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :date_found
      t.string :expiration_date

      t.timestamps
    end
  end
end
