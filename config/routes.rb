Rails.application.routes.draw do
  resources :posts, only: [:show, :edit, :update]
  resources :authors, only: [:show, :new, :create]
end
