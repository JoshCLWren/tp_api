class RouteHomeLocation < ApplicationRecord
  validates_presence_of :location_id, :route_id
  belongs_to :route
end
