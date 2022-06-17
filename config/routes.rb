Rails.application.routes.draw do
  resources :articles
  get '/register', to: 'users#new'
  resources :users, only: [:create]
  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
