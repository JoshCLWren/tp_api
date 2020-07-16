module Mutations
  class CreateRouteLocation < BaseMutation

    field :route_location, Types::RouteLocationType, null: false
    field :errors, [String], null: false

    argument :location_id, Types::LocationType, Integer, required: true
    argument :route_id, Types::RouteType, Integer, required: true

    def resolve(route_id:, location_id:, route_location:)
      routeLocation = RouteLocation.save(route_id: route_id, location_id: location_id)
      if RouteLocation.save
        {
          routeLocation: routeLocation,
          errors: []
        }
      else
        {
          routeLocation: nil,
          errors: routeLocation.errors.full_messages
        }
      end
    end
  end
end