Rails.application.routes.draw do
  get "/authors/new", to: "authors#new", as: "new_author"
  get "/authors/:id/edit", to: "authors#edit", as: "edit_author"
  get "/authors/:id", to: "authors#show", as: "author"
  patch "authors/:id", to: "authors#update"
  post "/authors", to: "authors#create"

  get "posts/new", to: "posts#new", as: "new_post"
  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  get "/posts/:id", to: "posts#show", as: "post"
  patch "/posts/:id", to: "posts#update"
  post "/posts", to: "posts#create"
end
