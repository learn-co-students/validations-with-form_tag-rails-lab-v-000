Rails.application.routes.draw do
  resources :authors, :posts, except: [:index, :destroy]
end
