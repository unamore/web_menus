class AddCityToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :city_id, :integer, index: true
  end
end
