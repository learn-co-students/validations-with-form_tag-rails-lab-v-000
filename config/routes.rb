Rails.application.routes.draw do
  resources :authors, except: [:destory]
  resources :posts, except: [:destory]
end
