class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :species
      t.datetime :date
      t.decimal :lat, precision: 7, scale: 4
      t.decimal :long, precision: 7, scale: 4
      t.string :region

      t.timestamps
    end
  end
end
