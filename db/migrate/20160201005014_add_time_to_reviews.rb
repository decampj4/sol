class AddTimeToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :time_at_location, :integer
    add_column :reviews, :time_at_location_type, :string
  end
end
