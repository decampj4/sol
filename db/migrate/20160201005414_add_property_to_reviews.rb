class AddPropertyToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :property_id, :integer
  end
end
