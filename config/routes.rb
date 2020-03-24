Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy]
  resources :users, only: [:index, :create, :destroy]
  # namespace :api do
  #   namespace :v1 do
      resources :all_data, only: :index
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
