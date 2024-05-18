Rails.application.routes.draw do
  root 'master#index'
  # get 'master/index'
  get 'master/new'
  get 'master/:id' => 'master#show', as: 'master_show'
  get 'master/:id/edit' => 'master#edit', as: 'master_edit'
  post 'movies' => 'master#create'
  patch 'movies/:id' => 'master#update', as: 'master_update'
  delete 'movies/:id' => 'master#destroy', as: 'master_destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
