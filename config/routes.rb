Rails.application.routes.draw do
  root 'task#input'
  get 'task/input'
  get 'task/output'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
