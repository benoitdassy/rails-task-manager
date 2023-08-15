Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # see all tasks
  get 'tasks', to: 'tasks#index'

  # create task
  get 'tasks/new', to: 'tasks#new', as: :tasknew
  post 'tasks', to: 'tasks#create'

  # see one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :taskedit
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
