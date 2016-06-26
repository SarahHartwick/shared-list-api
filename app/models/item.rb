#
class Item < ActiveRecord::Base
  belongs_to :user, inverse_of: :items
  belongs_to :event, inverse_of: :items
  validates_presence_of :name, :unit
end
