module Mutations
  class DeleteRouteLocationByIds < BaseMutation
    graphql_name 'DeleteRouteLocationByIds'

    field :routeLocation, Types::RouteLocationType, null: true

    argument :location_id, ID, required: true
    argument :route_id, ID, required:true

    def resolve(location_id:, route_id:)
      route_location_id = RouteLocation.where(location_id: location_id, route_id: route_id).ids.first
      route_location = RouteLocation.find(route_location_id)
      route_location.destroy
      {
        route_location: route_location
      }
    end
  end
end
