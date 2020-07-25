class Location < ApplicationRecord
  validates_presence_of :slug, :gps
  has_many :route_locations
  has_many :routes, through: :route_locations
  has_many :route_home_locations
  has_many :routes, through: :route_home_locations
end
