class SavingSerializer < ActiveModel::Serializer
  attributes :id, :saving_type, :name, :amount
end
