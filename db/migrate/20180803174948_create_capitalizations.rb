class CreateCapitalizations < ActiveRecord::Migration[5.2]
  def change
    create_table :capitalizations do |t|
      t.decimal :rate
      t.integer :user_id

      t.timestamps
    end
  end
end
