Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "mytoilet", to: "toilets#mytoilet"
  resources :users, only: [:index]

  resources :toilets do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
