Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # show, new, edit, create, and update

  
  get 'authors/new', to: 'authors#new', as: 'new_author'
  get 'authors/update', to: 'authors#update'
  get 'authors/:id', to: 'authors#show', as: 'author'
  post 'authors', to: 'authors#create'
  patch 'authors/:id', to: 'authors#update'

  get "/posts/new", to: "posts#new", as: "new_post"
  post "/posts", to: "posts#create"
  get "/posts/:id", to: "posts#show", as: "post"
  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  patch "/posts/:id", to: "posts#update"

end
