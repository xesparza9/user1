Rails.application.routes.draw do
  get 'user/:id' => 'application#show'
  get '/user/:id/edit' => 'application#edit'
  get '/new_user' => 'application#new'
  get '/create_user' => 'application#create'
  get '/update_user/:id' => 'application#update'
  get '/user/:id/destroy' => 'application#destroy'

end
