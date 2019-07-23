Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:create, :show, :new, :index, :edit, :update]
  resources :posts, only: [:create, :show, :new, :edit, :update, :index]
end
