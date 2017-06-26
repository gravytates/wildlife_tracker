class Animal < ActiveRecord::Base
  has_many :sightings
  validates(:species, :region, :name, :presence => true)
end
