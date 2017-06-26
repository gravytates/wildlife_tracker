class Sighting < ActiveRecord::Base
  belongs_to :animal

  validates(:description, :lat, :long, :date, :presence => true)
end
