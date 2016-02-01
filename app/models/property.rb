class Property < ActiveRecord::Base
  has_many :reviews
  belongs_to :landlord
end
