# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
#  get '/index', to: 'posts#index'
#  get '/new', to: 'post#new'
#  get '/create', to: 'posts#create'
#  get '/show', to: 'post#show'
#  get '/edit', to: 'posts#edit'
#  get '/update', to: 'posts#update'
#  get '/destroy', to: 'posts#destroy'
#
  # BEGIN

  # END
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
