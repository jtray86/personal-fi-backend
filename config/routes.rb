Rails.application.routes.draw do

  get "/me", to: "users#show"

  get '/debt/:id', to:'debts#index'
  patch '/debt/:id', to:'debts#update'

  get '/transaction/:id', to:'transactions#index'
  post '/transaction/:id', to:'transactions#create'

  get '/income/:id', to:'incomes#index'
  post '/newIncome', to:'incomes#create'

  get '/earning/:id', to:'earnings#index'
  patch '/earning/:id', to:'earnings#update'
  post '/newEarning', to:'earnings#create'

  get '/bill/:id', to:'bills#index'
  patch '/bill/:id', to:'bills#update'

  get '/deposit/:id', to:'deposits#index'
  post '/deposit', to:'deposits#create'

  get '/saving/:id', to:'savings#index'
  patch '/saving/:id', to:'savings#update'

  # resources :transactions
  # resources :earnings
  # resources :deposits
  # resources :bills
  # resources :outgoings
  # resources :savings
  # resources :incomes
  # resources :debts
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
