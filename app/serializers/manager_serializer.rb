class ManagerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :address, :phone, :email
end
