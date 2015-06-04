class RemoveCitiesFromRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :cities_id, :integer
  end
end
