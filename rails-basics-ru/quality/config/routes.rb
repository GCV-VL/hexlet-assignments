# frozen_string_literal: true

Rails.application.routes.draw do
  root 'bulletins#index'
 
  get "bulletins/index", to: "bulletins#index"
  get "bulletins/index", to: "bulletins#index", as: "bulletins"
  get "bulletins/show", to: "bulletins#index"
  get "bulletin/:id", to: "bulletins#show", as: "bulletin"
end