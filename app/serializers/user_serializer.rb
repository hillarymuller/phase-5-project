class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :dogs
  has_one :household
end
