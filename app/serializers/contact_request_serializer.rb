class ContactRequestSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :message, :subject
end
