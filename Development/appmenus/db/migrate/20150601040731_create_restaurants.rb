class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :coderest
      t.string :namerest
      t.string :adressrest
      t.string :contactrest
      t.string :emailrest
      t.references :cities, index: true

      t.timestamps
    end
  end
end
