Rails.application.routes.draw do
  resources :exercises, :plans, :user_plans, :users
  get '/', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  get '/difficulty/moderate', to: 'plans#moderate'
  get '/difficulty/beginner', to: 'plans#beginner'
  get '/difficulty/advanced', to: 'plans#advanced'
end
