class Office < ActiveRecord::Base

  validates_presence_of :name
  validates_length_of :name, :maximum => 32

  validates_numericality_of :desks

  def self.find_by_search_terms(terms)
    Office.find_by_sql("SELECT * FROM offices WHERE name like '%#{terms}%'")
  end

end
