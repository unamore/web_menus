class CreateMenuOrders < ActiveRecord::Migration
  def change
    create_table :menu_orders do |t|
      t.integer :menu_id
      t.integer :order_id

      t.timestamps
    end
  end
end
