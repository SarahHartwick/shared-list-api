#
class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :sharings
  has_many :events, through: :sharings
end
