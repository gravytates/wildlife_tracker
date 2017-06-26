class Sighting < ActiveRecord::Base
  belongs_to :animal

  validates :description, :presence => true
  validates :lat, :presence => true
  validates :long, :presence => true
end
