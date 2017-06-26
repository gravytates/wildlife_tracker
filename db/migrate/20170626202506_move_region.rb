class MoveRegion < ActiveRecord::Migration[5.1]
  def change
    remove_column :animals, :region, :string
    add_column :sightings, :region, :string
  end
end
