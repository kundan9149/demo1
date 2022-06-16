Rails.application.routes.draw do
  resources :articles
  get '/register', to: 'users#new'
  resources :users, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end