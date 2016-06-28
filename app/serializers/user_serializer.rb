#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :events
  has_many :events
  has_many :items
end
