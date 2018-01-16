Rails.application.routes.draw do
  resources :authors, only: [:index, :show, :new, :create, :edit]
  patch 'authors/:id', to: 'authors#update'

  resources :posts, only: [:index, :show, :new, :create, :edit]
  patch 'posts/:id', to: 'posts#update'
end
