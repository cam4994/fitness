Rails.application.routes.draw do
  resources :exercises, :plans, :user_plans, :users
  get '/', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
end
