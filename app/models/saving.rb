class Saving < ApplicationRecord
    has_many :deposits
    has_many :users, through: :deposits
end
