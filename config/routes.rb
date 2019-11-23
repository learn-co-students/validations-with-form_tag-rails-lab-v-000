Rails.application.routes.draw do
  resources :posts, only: [:show, :edit, :update]
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
