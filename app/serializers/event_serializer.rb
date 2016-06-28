#
class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :user_id, :profiles
  has_many :items
end
