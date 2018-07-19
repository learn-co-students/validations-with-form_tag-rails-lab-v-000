Rails.application.routes.draw do
  resources :authors
  resources :posts, only: [:show, :edit, :update]
end
