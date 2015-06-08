class CreateUserOrders < ActiveRecord::Migration
  def change
    create_table :user_orders do |t|
      t.integer :user_id
      t.integer :order_id

      t.timestamps
    end
  end
end
