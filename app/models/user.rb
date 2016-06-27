#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :events, inverse_of: :user
  has_many :items, inverse_of: :user
  validates_presence_of :email, :name
end
