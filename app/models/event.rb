#
class Event < ActiveRecord::Base
  belongs_to :user, inverse_of: :events
  has_many :items, inverse_of: :event, dependent: :destroy
  has_many :sharings, dependent: :destroy
  has_many :profiles, through: :sharings
  validates_presence_of :user_id, :name, :date, :location
end
