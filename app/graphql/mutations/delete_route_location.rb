module Mutations
  class DeleteRouteLocation < BaseMutation
    graphql_name 'DeleteRouteLocation'

    field :Routelocation, Types::RouteLocationType, null: true

    argument :id, ID, required: true

    def resolve(**args)
      route_location = RouteLocation.find(args[:id])
      route_location.destroy
      {
        route_location: route_location,
      }
    end
  end
end
