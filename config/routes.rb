Rails.application.routes.draw do
  resources :authors, only: [:new, :edit, :update, :show, :create]
  resources :posts, only: [:new, :edit, :update, :show, :create]
end
