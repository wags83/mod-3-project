Rails.application.routes.draw do
  resources :days, except: [:index, :create, :destroy]
  resources :countries, only: [:show, :index]
  resources :favorites, only: [:show, :create, :destroy]
  resources :users, only: [:show, :create, :destroy]
  get '/latest_data', to: 'countries#latest_data', as: 'latest_data'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
