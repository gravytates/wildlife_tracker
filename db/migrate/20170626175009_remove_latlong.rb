class RemoveLatlong < ActiveRecord::Migration[5.1]
  def change
    remove_column :animals, :lat, :decimal
    remove_column :animals, :long, :decimal
  end
end
