class Office < ActiveRecord::Base

  validates_presence_of :name
  validates_length_of :name, :maximum => 32

  validates_numericality_of :desks

end
