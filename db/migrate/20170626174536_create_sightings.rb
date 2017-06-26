class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |t|
      t.string :description
      t.decimal :lat, precision: 7, scale: 4
      t.decimal :long, precision: 7, scale: 4
      t.integer :animal_id

      t.timestamps
    end
  end
end
