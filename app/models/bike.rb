class Bike < ApplicationRecord
  belongs_to :brand_model
  belongs_to :user
end
