Rails.application.routes.draw do
  resources :authors, only: [:create, :new, :show, :update, :edit]
  resources :posts, only: [:create, :new, :show, :update, :edit]
end
