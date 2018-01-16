Rails.application.routes.draw do
  resources :posts, only: [:new, :show, :edit, :update, :create]
  resources :authors, only: [:new, :show, :edit, :update, :create]
end
