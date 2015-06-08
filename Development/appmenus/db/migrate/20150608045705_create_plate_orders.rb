class CreatePlateOrders < ActiveRecord::Migration
  def change
    create_table :plate_orders do |t|
      t.integer :plate_id
      t.integer :order_id

      t.timestamps
    end
  end
end
