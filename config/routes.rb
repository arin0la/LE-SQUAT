Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:index]
  resources :toilets do
    resources :bookings, only: [:new, :create, :index]
  end
  resources :bookings, only: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
