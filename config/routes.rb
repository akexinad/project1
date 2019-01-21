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
end
