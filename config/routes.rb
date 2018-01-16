Rails.application.routes.draw do
  resources :authors, only: [:index, :new, :create, :edit, :show, :update]
  resources :posts, only: [:index, :new, :create, :edit, :show, :update]
end
