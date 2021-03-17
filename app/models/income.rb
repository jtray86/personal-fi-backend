class Income < ApplicationRecord
    has_many :earnings
    has_many :users, through: :earnings
end
