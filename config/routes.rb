Rails.application.routes.draw do
  resources :authors, only: [:new, :create, :show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :edit, :update]
end
