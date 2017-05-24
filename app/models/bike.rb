class Bike < ApplicationRecord
  belongs_to :brand_model
  belongs_to :user
  has_many :bookings
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
