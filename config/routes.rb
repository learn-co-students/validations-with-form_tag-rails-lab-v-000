Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  resources :posts, only: [:show, :new, :edit, :create, :update]
  resources :authors, only: [:show, :new, :edit, :create, :update]

end
