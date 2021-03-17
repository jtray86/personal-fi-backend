class EarningSerializer < ActiveModel::Serializer
  attributes :id, :actual, :pay_day
  has_one :user
  has_one :income
end
