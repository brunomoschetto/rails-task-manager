Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks', to: 'tasks#index'

  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task_details

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update', as: :task

  delete 'tasks/:id', to: 'tasks#destroy'

  # resources :tasks, only: :update
end
