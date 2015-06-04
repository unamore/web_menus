class CreateTypeplates < ActiveRecord::Migration
  def change
    create_table :typeplates do |t|
      t.integer :codetype
      t.string :nametype

      t.timestamps
    end
  end
end
