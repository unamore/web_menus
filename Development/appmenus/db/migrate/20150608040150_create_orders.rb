class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :created_at
      t.datetime :update_at
      t.string :address
      t.string :phone
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
