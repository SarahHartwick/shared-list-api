class ChangedClaimedColumnName < ActiveRecord::Migration
  def change
    rename_column :items, :purchased, :claimed
  end
end
