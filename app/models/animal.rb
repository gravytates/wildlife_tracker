class Animal < ActiveRecord::Base
  validates(:species, :date, :region, :presence => true)
end  
