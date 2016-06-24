#
class Event < ActiveRecord::Base
  belongs_to :user, inverse_of: :events, dependent: :destroy
  has_many :items, inverse_of: :event
  validates_presence_of :user_id, :name, :date, :location
end
