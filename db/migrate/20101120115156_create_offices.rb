class CreateOffices < ActiveRecord::Migration
  def self.up
    create_table :offices do |t|
      t.string :name
      t.text :description
      t.text :data
      t.string :location
      t.integer :desks

      t.timestamps
    end
  end

  def self.down
    drop_table :offices
  end
end
