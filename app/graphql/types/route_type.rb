module Types
  class RouteType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :locations, [Types::LocationType], null: true
    field :locations_count, Integer, null: true
    field :route_locations, [Types::RouteLocationType], null: true
    field :route_home_location, [Types::RouteHomeLocationType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    def locations_count
      object.locations.size
    end
  end
end
