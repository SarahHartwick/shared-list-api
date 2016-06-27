#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name
  has_many :events
  has_many :items
end
