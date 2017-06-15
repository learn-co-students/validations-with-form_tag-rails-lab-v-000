Rails.application.routes.draw do
  resources :authors, only: [:create, :new, :show]
  resources :posts, only: [:edit, :update, :show]
end
