class Sighting < ActiveRecord::Base
  belongs_to :animal

  validates(:description, :region, :lat, :long, :date, :presence => true)
end
