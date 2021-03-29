Rails.application.routes.draw do

  get "/me", to: "users#show"

  get '/debt/:id', to:'debts#index'
  patch '/debt/:id', to:'debts#update'
  post '/newDebt', to:'debts#create'

  get '/transaction/:id', to:'transactions#index'
  post '/transaction', to:'transactions#create'

  get '/income/:id', to:'incomes#index'
  post '/newIncome', to:'incomes#create'

  get '/earning/:id', to:'earnings#index'
  patch '/earning/:id', to:'earnings#update'
  post '/newEarning', to:'earnings#create'

  get '/bill/:id', to:'bills#index'
  get '/bill/show/:id', to:'bills#show'
  patch '/bill/:id', to:'bills#update'
  post '/newBill', to:'bills#create'

  get '/deposit/:id', to:'deposits#index'
  post '/deposit', to:'deposits#create'

  get '/saving/:id', to:'savings#index'
  patch '/saving/:id', to:'savings#update'
  post '/saving', to:'savings#create'

  get'/outgoing/:id', to:'outgoings#index'
  patch'/outgoing/:id', to:'outgoings#update'
  delete'/outgoing/:id', to:'outgoings#delete'
  post '/newOutgoing', to:'outgoings#create'

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
