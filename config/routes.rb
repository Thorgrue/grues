Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'grues/index', to: 'grues#index', as: 'index'
  # get 'pages/search', to: 'pages#search', as: 'search'
  # get 'cities/map', to: 'cities#map', as: 'cities_map '
end
