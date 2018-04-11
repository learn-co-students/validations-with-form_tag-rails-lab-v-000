Rails.application.routes.draw do
  resources :authors, only: [:new, :edit, :show, :create, :update]
  resources :posts, only: [:new, :edit, :show, :create, :update]
end
