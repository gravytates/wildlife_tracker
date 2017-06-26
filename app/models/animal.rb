class Animal < ActiveRecord::Base
  validates(:species, :region, :name, :presence => true)
end
