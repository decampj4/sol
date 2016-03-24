class Review < ActiveRecord::Base
  belongs_to :property
  validates :property, presence: true
end
