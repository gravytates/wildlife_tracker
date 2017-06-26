class ChangeAnimals < ActiveRecord::Migration[5.1]
  def change
    remove_column :animals, :date, :datetime
    add_column :animals, :name, :string
    add_column :sightings, :date, :datetime
  end
end
