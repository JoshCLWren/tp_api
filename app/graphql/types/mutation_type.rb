module Types
  class MutationType < Types::BaseObject
    field :delete_route, mutation: Mutations::DeleteRoute
    field :update_route, mutation: Mutations::UpdateRoute
    field :create_route, mutation: Mutations::CreateRoute
    field :delete_location, mutation: Mutations::DeleteLocation
    field :update_location, mutation: Mutations::UpdateLocation
    field :create_route_location, mutation: Mutations::CreateRouteLocation
    field :delete_route_location, mutation: Mutations::DeleteRouteLocation
    field :delete_route_location_by_Ids, mutation: Mutations::DeleteRouteLocationByIds

    field :create_location, mutation: Mutations::CreateLocation
    field(:create_location, {mutation: Mutations::CreateLocation})
  end
end
