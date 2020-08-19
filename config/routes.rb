Rails.application.routes.draw do
  resources :exercises, :users, :plans, :user_plans
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  
end
