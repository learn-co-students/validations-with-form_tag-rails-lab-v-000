Rails.application.routes.draw do
  resources :authors, except: [:destroy]
  resources :posts, except: [:destroy]
end
