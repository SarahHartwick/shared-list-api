#
class Sharing < ActiveRecord::Base
  belongs_to :profile
  belongs_to :event
end
