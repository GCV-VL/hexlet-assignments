# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks, except: [:index]
  root 'tasks#index'
  get '/tasks', to: 'tasks#index'
end





#Error:
#BulletinsControllerTest#test_should_get_index:
#NameError: undefined local variable or method `bulletins_index_url' for #<BulletinsControllerTest:0x000055d00f799340>
#    test/controllers/bulletins_controller_test.rb:5:in `block in <class:BulletinsControllerTest>'


# frozen_string_literal: true

#Rails.application.routes.draw do
#  root 'bulletins#index'
#  resources :bulletins, only: [:index, :show]
#end


#
#Rails.application.routes.draw do
#  root 'bulletins#index'
#
#  get "bulletins/index", to: "bulletins#index"
#  get "bulletins/index", to: "bulletins#index", as: "bulletins"
#  get "bulletins/show", to: "bulletins#index"
#  get "bulletin/:id", to: "bulletins#show", as: "bulletin"
#end