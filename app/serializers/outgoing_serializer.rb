class OutgoingSerializer < ActiveModel::Serializer
  attributes :id, :outgoing_type, :name, :projected, :due_date
end
