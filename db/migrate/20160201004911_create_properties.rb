class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street_address_one
      t.string :street_address_two
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.integer :bedrooms
      t.float :baths
      t.float :square_footage

      t.timestamps null: false
    end
  end
end
