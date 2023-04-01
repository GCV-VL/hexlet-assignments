# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks, except: [:index]
  root 'tasks#index'
  get '/tasks', to: 'tasks#index'
end



