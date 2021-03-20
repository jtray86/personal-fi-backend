Rails.application.routes.draw do

  get "/me", to: "users#show"

  get '/debt/:id', to:'debts#index'

  get '/income/:id', to:'incomes#index'

  get '/earning/:id', to:'earnings#index'

  get '/bill/:id', to:'bills#index'

  get '/deposit/:id', to:'deposits#index'

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
