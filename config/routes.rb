Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new'

  get 'todos', to: 'todos#create'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
