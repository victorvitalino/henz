class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.text :description
      t.string :patrimony
      t.integer :status_vehicle
      t.string :vehicle_plate
      t.references :vehicle_type, index: true
      t.references :vehicle_service, index: true
      t.references :provider, index: true

      t.timestamps null: false
    end
    # add_foreign_key :vehicles, :vehicle_types
    # add_foreign_key :vehicles, :vehicle_services
    # add_foreign_key :vehicles, :providers
  end
end
