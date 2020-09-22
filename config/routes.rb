Rails.application.routes.draw do
  devise_for :users
  root 'rooms#home'
  post '/messages', to: 'messages#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
