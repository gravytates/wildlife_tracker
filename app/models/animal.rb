class Animal < ActiveRecord::Base
  has_many :sightings
  validates(:species, :name, :presence => true)
end
