class AddUser < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :description
      t.string :website
      t.text :data # for linked accounts

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
