Rails.application.routes.draw do
resources :authors, only: [:new, :create, :show]
resources :posts, only: [:edit, :update, :show]
end
