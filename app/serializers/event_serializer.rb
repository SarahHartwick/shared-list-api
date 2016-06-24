#
class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :user_id
  has_one :user
  has_many :items
end
