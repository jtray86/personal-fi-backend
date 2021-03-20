class BillSerializer < ActiveModel::Serializer
  attributes :id, :actual, :paid_date
  has_one :user
  has_one :outgoing
end
