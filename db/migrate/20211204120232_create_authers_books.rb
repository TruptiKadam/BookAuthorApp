class CreateAuthersBooks < ActiveRecord::Migration
  def change
    create_table :authers_books, id: false do |t|
      t.belongs_to :book
      t.belongs_to :auther
      t.timestamps
    end
  end
end
