class ContactRequestSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :message, :subject
end
