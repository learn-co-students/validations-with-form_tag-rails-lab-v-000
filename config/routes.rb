Rails.application.routes.draw do
  resources :authors, only: [:show, :new, :create]
  resources :posts, only: [:show, :new, :edit, :update]
end
