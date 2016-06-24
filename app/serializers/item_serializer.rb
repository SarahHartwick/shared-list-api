#
class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit, :quantity, :purchased, :user_id, :event_id
  # has_one :user
  # has_one :event
end
