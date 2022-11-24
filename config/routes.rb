Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :stars, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:index, :destroy, :show]
end
