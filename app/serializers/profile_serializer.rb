#
class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :email, :events, :name
  has_one :user
end
