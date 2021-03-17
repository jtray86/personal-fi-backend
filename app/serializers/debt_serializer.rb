class DebtSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :inital_amount, :current_ammount, :interest, :in_collection
end
