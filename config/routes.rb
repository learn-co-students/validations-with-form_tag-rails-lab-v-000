Rails.application.routes.draw do
resources :posts, except: [:index, :destroy]
resources :authors, except: [:index, :destroy]
end
