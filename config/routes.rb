Rails.application.routes.draw do
  resources :styles
  resources :memberships
  resources :beer_clubs
  resources :users
  resources :beers
  resources :breweries
  resources :ratings, only: [:index, :new, :create, :destroy]
  resource :session, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  get 'beerlist', to:'beers#list'
  get 'brewerylist', to:'breweries#list'
  delete 'signout', to: 'sessions#destroy'  
  root 'breweries#index'
  resources :places, only:[:index, :show]
  post 'places', to:'places#search'
  resources :breweries do
    post 'toggle_activity', on: :member
  end
  resources :users do
    post 'freezeAccount', on: :member
  end
  resources :users do
    post 'unFreezeAccount', on: :member
  end
end