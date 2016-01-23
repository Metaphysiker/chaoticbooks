class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :booktitle
      t.text :bookdescription

      t.timestamps null: false
    end
  end
end
