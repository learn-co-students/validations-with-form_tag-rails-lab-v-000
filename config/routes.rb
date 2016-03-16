Rails.application.routes.draw do
  resources :authors, :posts, except: :destroy
end
