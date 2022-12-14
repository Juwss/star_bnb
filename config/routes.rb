Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :reservations, only: [:index, :destroy, :show]
  resources :stars, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reservations, only: [:new, :create]
  end

end
