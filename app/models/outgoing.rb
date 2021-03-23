class Outgoing < ApplicationRecord
    has_many :bills
    has_many :users, through: :bills,  dependent: :delete_all
end
