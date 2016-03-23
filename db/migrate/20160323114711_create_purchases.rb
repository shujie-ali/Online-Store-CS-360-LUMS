class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :bookID
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
