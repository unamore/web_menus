class RemovePriceFromMenus < ActiveRecord::Migration
  def change
    remove_column :menus, :price, :integer
  end
end
