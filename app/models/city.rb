class City < ActiveRecord::Base

  has_many :offices

  def to_s
    name
  end

end