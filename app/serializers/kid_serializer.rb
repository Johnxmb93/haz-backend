class KidSerializer < ActiveModel::Serializer
  attributes :id, :age, :parent_id, :drop_off_time, :lunch, :days_attending, :note, :name 
end
