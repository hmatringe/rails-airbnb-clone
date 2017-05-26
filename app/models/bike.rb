class Bike < ApplicationRecord
  belongs_to :brand_model
  belongs_to :user
  has_many :bookings
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def booked_dates
    unless bookings.empty?
      bookings.select { |b| b.status == "accepted" }.map { |b| (b.start_date..b.end_date) }
    end
  end

  def dates_available?(range)
    !self.booked_dates.any? { |r| r.include?(range) }
  end
end
