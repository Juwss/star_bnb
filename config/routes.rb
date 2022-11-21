Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users do
    resources :stars, only: [:index]
  end
    resources :stars, only: [:show, :create, :new]

end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
