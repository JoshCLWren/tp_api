module Types
  class LocationType < Types::BaseObject
    # description: "A location on Earth."
    field :id, ID, null: false
    field :routes, [Types::RouteType], null: true
    field :slug, String, null: false
    field :gps, String, null: false

  end
end
