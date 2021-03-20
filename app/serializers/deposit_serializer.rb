class DepositSerializer < ActiveModel::Serializer
  attributes :id, :amount, :deposit_date
  has_one :user
  has_one :saving
end
