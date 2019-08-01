class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.text :street
      t.text :unit
      t.text :city
      t.text :state
      t.text :country
      t.text :postal
      t.text :rooms

      t.timestamps
    end
  end
end
