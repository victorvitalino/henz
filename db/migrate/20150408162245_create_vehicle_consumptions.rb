class CreateVehicleConsumptions < ActiveRecord::Migration
  def change
    create_table :vehicle_consumptions do |t|
      t.references :vehicle, index: true
      t.float :km_start
      t.float :km_end
      t.float :gas_liter
      t.float :value_liter
      t.date :date
      t.text :number_notes
      t.text :observation
      t.references :desk_supplie, index: true
      t.references :driver, index: true

      t.timestamps null: false
    end
    # add_foreign_key :vehicle_consumptions, :vehicles
    # add_foreign_key :vehicle_consumptions, :desk_supplies
    # add_foreign_key :vehicle_consumptions, :drivers
  end
end
