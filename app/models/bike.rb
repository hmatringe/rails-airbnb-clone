class Bike < ApplicationRecord
  belongs_to :brand_model
  belongs_to :user
  has_many :bookings
  has_attachment :photo
end
