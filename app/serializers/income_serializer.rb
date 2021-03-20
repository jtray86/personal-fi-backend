class IncomeSerializer < ActiveModel::Serializer
  attributes :id, :income_type, :name, :projected
end
