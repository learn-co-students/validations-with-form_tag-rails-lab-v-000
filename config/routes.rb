Rails.application.routes.draw do
  resources :posts, only: [:show, :new, :create, :edit, :update]
  resources :authors, only: [:show, :new, :create, :edit, :update]
end
