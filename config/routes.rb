Rails.application.routes.draw do
  resources :authors, except: [:index, :destroy]
  resources :post, except: [:index, :destroy]
end
