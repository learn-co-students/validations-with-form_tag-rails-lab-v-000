Rails.application.routes.draw do
  resources :authors, only: [:new, :show, :create]
  resources :posts, only: [:new, :show, :create, :edit, :update]

end
