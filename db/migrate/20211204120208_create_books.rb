class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_title
      t.timestamps
    end
  end
end
