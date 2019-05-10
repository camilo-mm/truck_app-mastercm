class Truck < ApplicationRecord
  belongs_to :user
  belongs_to :truck_type
  belongs_to :truck_merchandise
  belongs_to :truck_load
  belongs_to :coverage
  belongs_to :city
  validates :user_id, :truck_type_id, :truck_merchandise_id, :truck_load_id, :coverage_id, :city_id, :gps, :available_now, :image, :latitude, :longitude, :price_per_km, presence: true
end
