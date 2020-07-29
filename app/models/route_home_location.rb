class RouteHomeLocation < ApplicationRecord
  validates_presence_of :location_id, :route_id
  belongs_to :route
  belogns_to :location
end
