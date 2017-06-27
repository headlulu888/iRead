class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.float  :number
      t.float  :rating
      t.timestamps null: false
    end
  add_index :books, :rating
  add_index :books, :name
  add_index :books, :number
  end
end
