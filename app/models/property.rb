class Property < ActiveRecord::Base
  has_many :reviews
  belongs_to :landlord
  validates :landlord, presence: true
end
