Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  # create all article actions
  resources :articles

  # custom about route for pages controller
  get '/about' => 'pages#about'

  # sign Up form to create new user
  get '/signup' => 'users#new'
  # all other user actions except new (created custom /signup route above)
  resources :users, except: [:new]

  # custom login route for sessions new action - page displays login form
  get '/login' => 'sessions#new'
  # custom login route for sesseions create action - actually signs the user into platform
  post '/login' => 'sessions#create'
  # logout action
  delete '/logout' => 'sessions#destroy'
end
