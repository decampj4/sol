class AddLandlordToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :landlord_id, :integer
  end
end
