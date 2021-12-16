class ParentSerializer < ActiveModel::Serializer
  attributes :id, :name, :kids_enrolled, :payment_status
end
