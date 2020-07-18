module Types
  class QueryType < Types::BaseObject
    # /locations
    field :locations, [Types::LocationType], null: false
    def locations
      Location.all
    end

    #/location/:id

    field :location, Types::LocationType, null: false do
      argument :id, ID, required: true
    end

    def location(id:)
      Location.find(id)
    end

    #/routes

    field :routes, [Types::RouteType], null: false

    def routes
      Route.all
    end

    #/routes/:id

    field :route, Types::RouteType, null: false do
      argument :id, ID, required: true
    end

    def route(id:)
      Route.find(id)
    end

    #route_locations
    field :route_locations, [Types::RouteLocationType], null: false

    def route_locations
      RouteLocation.all
    end

    field :route_location, Types::RouteLocationType, null: false do
      argument :id, ID, required: true
    end

    def route_location(id:)
      RouteLocation.find(id)
    end

  end
end
