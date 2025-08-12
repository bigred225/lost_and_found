class CreateClaims < ActiveRecord::Migration[8.0]
  def change
    create_table :claims do |t|
      t.references :user, null: false, foreign_key: true
      t.references :found_item, null: false, foreign_key: true
      t.string :expiration_date

      t.timestamps
    end
  end
end
