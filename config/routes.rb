Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :destroy]
  resources :clients, only: [:index, :show, :create, :destroy]
  resources :managers, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
