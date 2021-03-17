class User < ApplicationRecord
has_secure_password

    has_many :transactions
    has_many :debts, through: :transactions
    has_many :earnings
    has_many :incomes, through: :earnings
    has_many :deposits
    has_many :savings, through: :deposits
    has_many :bills
    has_many :outgoings, through: :bills

end
