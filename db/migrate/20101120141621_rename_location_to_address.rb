class RenameLocationToAddress < ActiveRecord::Migration
  def self.up
    rename_column :offices, :location, :address
  end

  def self.down
    rename_column :offices, :address, :location
  end
end
