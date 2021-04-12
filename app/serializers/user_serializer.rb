class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :display_name, :bio, :phone_number
end
