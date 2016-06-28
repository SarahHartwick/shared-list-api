#
class CreateSharings < ActiveRecord::Migration
  def change
    create_table :sharings do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
