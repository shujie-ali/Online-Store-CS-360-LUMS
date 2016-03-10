class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :coursecode
      t.string :instructor
      t.integer :price
      t.string :semester
      t.string :dept

      t.timestamps null: false
    end
  end
end
