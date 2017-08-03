Rails.application.routes.draw do

  get 'todos', to: 'todos#index'
  get 'todos/new'

  post 'todos', to: 'todos#create'

  get 'todos/:id', to: 'todos#show', as: 'todo'

  #patch 'todos/:id/edit', to: 'todos#edit'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'

  patch 'todos/:id', to: 'todos#update'

  delete 'todos/:id', to: 'todos#destroy'

  post 'todos/:id', to: 'todos#complete'

  get 'todos/list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
