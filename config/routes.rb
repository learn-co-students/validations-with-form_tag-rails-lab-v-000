Rails.application.routes.draw do
  resources :authors, only: [:index, :new, :create, :show, :edit, :update]
  resources :posts, only: [:index, :new, :create, :show, :edit, :update]
end
