Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create, :show, :edit, :update]
  resources :authors, only: [:index, :new, :create, :show, :edit, :update]
end
