Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index, :show]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :thinkers
  resources :theories
  resources :fields

  post "/thinkers/:id/favourite" => "thinkers#add_to_favourites", :as => "add_to_favourites"
  # The variable "remove_favourite" was created to redirect the route to the correct controller in order to trigger the destroy_favourite method. The - :as => "..." creates the rails path!
  get  "/users/:id/remove_favourite" => "thinkers#destroy_favourite", :as => "delete_from_favourites"

end
