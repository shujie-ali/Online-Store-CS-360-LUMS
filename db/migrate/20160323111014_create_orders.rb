class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :bookIDs
      t.integer :customerID
      t.string :status
      t.date :dateOrdered
      t.text :quantities

      t.timestamps null: false
    end
  end
end
