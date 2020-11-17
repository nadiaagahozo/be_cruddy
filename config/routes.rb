Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors/:id" => "actors#show"
    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"
    
    get "/movies/:id" => "movies#show"
    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    get "/query" => "params#query" #?year=2020
    post "/body_params" => "params#body_params" #use multipart form, put in the last_name and value Basset
    get "/url_segment/:title" => "params#url_segment"
    #insomia then url_segment/title of the movie
    #title is case sensitive
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"


  end
end
