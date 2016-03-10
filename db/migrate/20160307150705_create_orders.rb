class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer
      t.integer :bid
      t.string :email
      t.string :mobile
      t.boolean :status

      t.timestamps null: false
    end
  end
end
