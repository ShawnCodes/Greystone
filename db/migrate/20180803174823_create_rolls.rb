class CreateRolls < ActiveRecord::Migration[5.2]
  def change
    create_table :rolls do |t|
      t.string :unit
      t.date :vacancy
      t.integer :monthly
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :annual

      t.timestamps
    end
  end
end
