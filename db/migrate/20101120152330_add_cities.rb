class AddCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.integer :offices_count
    end
    add_column :offices, :city_id, :integer
    remove_column :offices, :city
  end

  def self.down
    drop_table :cities
    add_column :offices, :city, :string
    remove_column :offices, :city_id
  end
end
