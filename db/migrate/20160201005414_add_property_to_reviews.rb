class AddPropertyToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :properties_id, :integer
  end
end
