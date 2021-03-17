Rails.application.routes.draw do
  resources :transactions
  resources :earnings
  resources :deposits
  resources :bills
  resources :outgoings
  resources :savings
  resources :incomes
  resources :debts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
