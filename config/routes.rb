Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :stars, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create, :show]
  end
  resources :reservations, only: [:index, :destroy]
end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
