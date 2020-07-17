Rails.application.routes.draw do

  # post "/graphql", to: "graphql#execute"
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  # end

  namespace :api do
    namespace :v1 do
      resources :locations
    end
    namespace :v2 do
      post "/graphql", to: "graphql#execute"
      if Rails.env.development?
        mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api/v2/graphql"

      end
    end
  end
end
