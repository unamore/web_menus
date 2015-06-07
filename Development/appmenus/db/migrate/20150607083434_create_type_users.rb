class CreateTypeUsers < ActiveRecord::Migration
  def change
    create_table :type_users do |t|
      t.integer :codetype
      t.string :nametype
      t.datetime :created_at
      t.datetime :update_at

      t.timestamps
    end
  end
end
