class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :taxes
      t.integer :insurance
      t.integer :repairs
      t.integer :administration
      t.integer :utility
      t.integer :management

      t.timestamps
    end
  end
end
