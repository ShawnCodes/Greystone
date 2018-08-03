class CreateCapitalizations < ActiveRecord::Migration[5.2]
  def change
    create_table :capitalizations do |t|
      t.integer :rate
      
      t.timestamps
    end
  end
end
