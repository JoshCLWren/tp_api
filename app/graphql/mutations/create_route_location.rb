module Mutations
  class CreateRouteLocation < BaseMutation

    field :route_location, Types::RouteLocationType, null: true
    field :errors, [String], null: false

    argument :location_id, ID, required: true
    argument :route_id, ID, required: true

    def resolve(route_id:, location_id:)
      route_location = RouteLocation.new(route_id: route_id, location_id: location_id)
      if route_location.save!
        {
          route_location: route_location,
          errors: []
        }
      else
        {
          route_location: nil,
          errors: route_location.errors.full_messages
        }
      end
    end
  end
end

