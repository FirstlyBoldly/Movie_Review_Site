Rails.application.routes.draw do
  devise_for :users
  root 'master#index'
  # get 'master/index'
  get 'master/new'
  get 'master/:id' => 'master#show', as: 'master_show'
  get 'master/:id/edit' => 'master#edit', as: 'master_edit'
  get 'users/index'
  get 'users/:id' => 'users#details', as: 'users_details'
  post 'movies' => 'master#create'
  patch 'master/:id' => 'master#update', as: 'master_update'
  delete 'master/:id' => 'master#destroy', as: 'master_destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
