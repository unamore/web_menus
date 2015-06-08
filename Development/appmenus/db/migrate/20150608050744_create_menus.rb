class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.datetime :date_menu
      t.decimal :price
      t.datetime :date_end
      t.integer :restaurant_id
      t.integer :plate_id

      t.timestamps
    end
  end
end
