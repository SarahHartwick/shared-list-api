#
class SharingSerializer < ActiveModel::Serializer
  attributes :id, :event_id, :profile_id, :event, :profile
  has_one :profile
  has_one :event
end
