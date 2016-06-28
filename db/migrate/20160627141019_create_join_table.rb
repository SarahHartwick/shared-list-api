#
class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :profiles, :events, table_name: :sharings
  end
end
