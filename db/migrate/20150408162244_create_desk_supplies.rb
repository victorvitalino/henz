class CreateDeskSupplies < ActiveRecord::Migration
  def change
    create_table :desk_supplies do |t|
      t.string :name
      t.text :address
      t.string :telphone
      t.string :geolocation
      t.references :city, index: true
      t.references :state, index: true

      t.timestamps null: false
    end
    add_foreign_key :desk_supplies, :cities
    add_foreign_key :desk_supplies, :states
  end
end
