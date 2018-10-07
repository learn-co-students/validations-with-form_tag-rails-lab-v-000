Rails.application.routes.draw do
  resources :authors, only: [:show, :new, :edit]
  resources :posts, only: [:show, :new, :edit]
  get '/authors/:id/edit', to: 'authors#edit'
  get '/posts/:id/edit', to: 'posts#edit'
  patch 'posts/:id', to: 'posts#update'
  patch 'authors/:id', to: 'authors#update'
  post 'authors', to: 'authors#create'
end
