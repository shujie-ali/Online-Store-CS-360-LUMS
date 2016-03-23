class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :author
      t.string :edition
      t.string :bookTitle
      t.string :instructor
      t.string :courseCode

      t.timestamps null: false
    end
  end
end
