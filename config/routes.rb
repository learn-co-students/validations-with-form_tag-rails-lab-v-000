Rails.application.routes.draw do
  resources :authors, only: [:new, :create, :show]
  resources :posts, only: [:show, :edit, :update]
end
