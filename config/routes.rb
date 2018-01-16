Rails.application.routes.draw do
  resources :authors, only: [:index, :show, :new, :create, :edit, :update]
    get '/authors/:id' => 'author#show'
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
end
