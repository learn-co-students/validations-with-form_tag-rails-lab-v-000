Rails.application.routes.draw do
  resources :authors, :posts, only: [:new, :create, :edit, :update, :show]
end
