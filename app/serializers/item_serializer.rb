#
class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit, :claimed, :purchased, :user_id, :event_id, :user
  has_one :user
  has_one :event
end
