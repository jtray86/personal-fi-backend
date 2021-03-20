class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :transaction_date
  has_one :user
  has_one :debt
end
