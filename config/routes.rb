Rails.application.routes.draw do
  root 'users#index'
  resources :users
  get '/profile/edit', to: 'users#edit'
  resources :sessions, only: %i[new create destroy]
  get '/profile', to: 'users#show', as: :profile
  get '/login', to: 'sessions#new'
end
