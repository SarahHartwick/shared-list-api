#
class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :user_id, :profiles, :user
  has_many :items
  has_one :user
end
