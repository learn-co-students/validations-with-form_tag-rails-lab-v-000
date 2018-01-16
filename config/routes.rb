Rails.application.routes.draw do

  get '/authors/new' => 'authors#new', as: 'new_author'
  get '/authors/:id' => 'authors#show', as: 'author'
  get '/authors/:id/edit' => 'authors#edit', as: 'edit_author'
  post '/authors' => 'authors#create'
  patch '/authors/:id' => 'authors#update'

  get '/posts/new' => 'posts#new', as: 'new_post'
  get '/posts/:id' => 'posts#show', as: 'post'
  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  post '/posts' => 'posts#create'
  patch '/posts/:id' => 'posts#update'

end
