class AddPriceToPlate < ActiveRecord::Migration
  def change
    add_column :plates, :price, :integer
  end
end
