Rails.application.routes.draw do

  resources :authors, only: [:new, :show, :create, :edit, :update]
  resources :posts, only: [:new, :show, :create, :edit, :update]

end
