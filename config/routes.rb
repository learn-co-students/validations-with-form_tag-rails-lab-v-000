Rails.application.routes.draw do
  resource :author, only: [:show, :new, :edit, :create, :update]
  resource :post, only: [:show, :new, :edit, :create, :update]
end
