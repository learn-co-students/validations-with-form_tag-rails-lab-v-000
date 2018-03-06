Rails.application.routes.draw do
  resources :authors, only: [:show, :new, :create, :edit, :update]
  resources :posts, only: [:show, :new, :create, :edit, :update]
  #patch 'authors/:id', to: 'authors#update'
  #patch 'posts/:id', to: 'posts#update'
end
