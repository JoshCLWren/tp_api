class RouteLocation < ApplicationRecord
  validates_presence_of location_id:, route_id:
  belongs_to :location
  belongs_to :route
end
