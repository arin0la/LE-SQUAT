Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :toilets, only: [:create, :show, :new, :index, :destroy] do
    resources :bookings, only: [:new, :create, :index]
  end
  resources :bookings, only: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
