class OutgoingSerializer < ActiveModel::Serializer
  attributes :id, :type, :name, :projected, :date
end
