class DepositSerializer < ActiveModel::Serializer
  attributes :id, :amount, :date
  has_one :user
  has_one :saving
end
