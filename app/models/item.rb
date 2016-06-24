#
class Item < ActiveRecord::Base
  belongs_to :user, inverse_of: :items
  belongs_to :event, inverse_of: :items
end
