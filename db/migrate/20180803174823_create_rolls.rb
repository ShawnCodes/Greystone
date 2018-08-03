class CreateRolls < ActiveRecord::Migration[5.2]
  def change
    create_table :rolls do |t|
      t.integer :user_id
      t.string :address
      t.string :unit
      t.date :vacancy
      t.decimal :monthly
      t.decimal :bedrooms
      t.decimal :bathrooms
      t.decimal :annual

      t.timestamps
    end
  end
end
