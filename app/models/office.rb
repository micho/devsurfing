class Office < ActiveRecord::Base

  validates_presence_of :name, :city, :country
  validates_length_of :name, :maximum => 32

  validates_numericality_of :desks
  
  belongs_to :city, :counter_cache => true
  attr_accessor :city_name

  def self.search(terms)
    Office.find_by_sql("SELECT * FROM offices WHERE search_terms like '%#{terms}%'")
  end

  def before_validation
    unless city_name.blank?
      self.city = City.where(:name => city_name, :country => country).first ||
                  City.create!(:name => city_name, :country => country)
    end
  end

  def before_save
    self.search_terms = "#{name} (#{city.name}, #{country})"
  end

end
