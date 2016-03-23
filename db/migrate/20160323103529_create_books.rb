class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :courseTitle
      t.string :courseCode
      t.string :instructor
      t.string :school
      t.integer :ourPrice
      t.integer :canotechPrice
      t.integer :numCopies
      t.string :bookTitle
      t.string :author
      t.string :edition
      t.string :dept
      t.string :comment

      t.timestamps null: false
    end
  end
end
