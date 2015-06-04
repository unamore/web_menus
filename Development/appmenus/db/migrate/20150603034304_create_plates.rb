class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.integer :codeplate
      t.string :nameplate
      t.references :typeplate, index: true

      t.timestamps
    end
  end
end
