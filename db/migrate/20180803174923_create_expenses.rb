class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.decimal :taxes
      t.decimal :insurance
      t.decimal :repairs
      t.decimal :administration
      t.decimal :utility
      t.decimal :management

      t.timestamps
    end
  end
end
