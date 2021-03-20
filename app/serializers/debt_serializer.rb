class DebtSerializer < ActiveModel::Serializer
  attributes :id, :debt_type, :name, :inital_amount, :current_amount, :interest, :in_collection
end
