Rails.application.routes.draw do
  resources :authors, only: [:new, :create, :update, :edit, :show]
  resources :posts, only: [:new, :create, :update, :edit, :show]
end
