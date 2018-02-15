Rails.application.routes.draw do
  get 'tweets/create'
  post '/tweet', to: 'tweets#create'
  get 'tweets/index'
  root 'tweets#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
