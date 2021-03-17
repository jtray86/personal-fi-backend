class BillSerializer < ActiveModel::Serializer
  attributes :id, :actual, :date
  has_one :user
  has_one :outgoing
end
