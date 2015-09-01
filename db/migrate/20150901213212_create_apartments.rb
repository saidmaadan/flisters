class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
