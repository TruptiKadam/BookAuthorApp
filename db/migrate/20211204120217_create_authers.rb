class CreateAuthers < ActiveRecord::Migration
  def change
    create_table :authers do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.timestamps
    end
  end
end
