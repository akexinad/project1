Rails.application.routes.draw do
  get 'fields/_form'
  get 'fields/edit'
  get 'fields/index'
  get 'fields/new'
  get 'fields/show'
  get 'theories/_form'
  get 'theories/edit'
  get 'theories/index'
  get 'theories/new'
  get 'theories/show'
  get 'thinkers/_form'
  get 'thinkers/edit'
  get 'thinkers/index'
  get 'thinkers/new'
  get 'thinkers/show'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
