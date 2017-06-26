class Sighting < ActiveRecord::Base
  belongs_to :animal

  validates(:description, :region, :lat, :long, :date, :presence => true)

  scope :search, -> (region_parameter) {where("region: region_parameter")}
end
