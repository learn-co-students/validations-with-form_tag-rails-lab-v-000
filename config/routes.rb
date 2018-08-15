Rails.application.routes.draw do
  resources :posts, only: [:update, :show, :edit]
  resources :authors, only: [:new, :show, :edit, :create]
end
