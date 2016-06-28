class DropTableSharings < ActiveRecord::Migration
  def change
    drop_table :sharings
  end
end
