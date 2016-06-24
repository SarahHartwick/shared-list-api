#
class FixClaimedColumnName < ActiveRecord::Migration
  def change
    rename_column :items, :claimed, :purchased
  end
end
