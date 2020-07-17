module Types
  class RouteLocationType < Types::BaseObject
    field :id, ID, null: false
    field :route_id, Integer, null: false
    field :location_id, Integer, null: false
    field :route, type:RouteType, null: false
    field :locations, type:LocationType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
