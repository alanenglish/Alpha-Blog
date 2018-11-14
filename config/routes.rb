Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :articles
  get '/about' => 'pages#about'
  resources :users, except: [:new]
  get '/signup' => 'users#new'
end
