class AddCountryAndCityToOffice < ActiveRecord::Migration
  def self.up
    add_column :offices, :country, :string
    add_column :offices, :city, :string
  end

  def self.down
    remove_column :offices, :country
    remove_column :offices, :city
  end
end
