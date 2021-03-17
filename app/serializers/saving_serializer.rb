class SavingSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :amount
end
