class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :customerID
      t.integer :orderID
      t.integer :bookID
      t.integer :quantity
      t.integer :discount

      t.timestamps null: false
    end
  end
end
