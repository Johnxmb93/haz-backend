class ParentSerializer < ActiveModel::Serializer
  attributes :id, :name, :kids_enrolled, :payment_status, :email, :phone_number
end
