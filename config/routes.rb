Rails.application.routes.draw do

  resources :authors, only: [:show, :new, :create, :edit, :update]
  resources :posts, only: [:show, :new, :create, :edit, :update]


  # get "/authors/new", to: "authors#new", as: "new_author"
  # get "/authors/:id", to: "authors#show", as: "author"
  # post "/authors", to: "authors#create"
  # get "/authors/:id/edit", to: "authors#edit", as: "edit_author"
  # patch "/authors/:id", to: "authors#show"

  # get "/posts/new", to: "posts#new", as: "new_post"
  # get "/posts/:id", to: "posts#show", as: "post"
  # post "/posts", to: "posts#create"
  # get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  # patch "/posts/:id", to: "posts#update"
end
