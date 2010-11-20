class AddSearchTermsToOffices < ActiveRecord::Migration
  def self.up
    add_column :offices, :search_terms, :string
  end

  def self.down
    remove_column :offices, :search_terms
  end
end
