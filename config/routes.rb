Rails.application.routes.draw do
  get '/', to: 'static#home'
  get '/about', to: 'static#about'

  # get 'worker/index'
  # get 'worker/show'
  # get 'worker/create'
  # get 'worker/edit'
resources :worker, only: [:index, :show, :create, :edit]
  # get 'co_op/index'
  # get 'co_op/show'
  # get 'co_op/create'
  # get 'co_op/edit'
  resources :co_op, only: [:index, :show, :create, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
