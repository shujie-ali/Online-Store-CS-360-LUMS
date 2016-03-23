class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :rollNum
      t.string :name
      t.string :mobileNum

      t.timestamps null: false
    end
  end
end
