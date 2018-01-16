Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit]
  resources :authors, only: [:index, :show, :new, :create, :edit, :update]
  post "/posts/:id", to: "posts#update", as: "post_update"
end
