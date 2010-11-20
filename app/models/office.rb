class Office < ActiveRecord::Base

  validates_presence_of :name, :city, :country
  validates_length_of :name, :maximum => 32

  validates_numericality_of :desks
  
  belongs_to :city, :counter_cache => true
  attr_accessor :city_name

  def self.find_by_search_terms(terms)
    Office.find_by_sql("SELECT * FROM offices WHERE name like '%#{terms}%'")
  end

  def before_validation
    unless city_name.blank?
      self.city = City.where(:name => city_name, :country => country).first ||
                  City.create!(:name => city_name, :country => country)
    end
  end

end
