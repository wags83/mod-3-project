Rails.application.routes.draw do
  resources :days
  resources :regions
  resources :countries
  resources :favorites, only: [:create, :destroy]
  resources :users, only: [:index, :create, :destroy]
  get '/latest_data', to: 'countries#latest_data', as: 'latest_data'
  # namespace :api do
  #   namespace :v1 do
      resources :all_data, only: :index
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
