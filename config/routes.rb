Rails.application.routes.draw do
  resources :authors, :posts, only: %i(show new edit create update)
end
