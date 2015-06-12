class CreateVehicleServices < ActiveRecord::Migration
  def change
    create_table :vehicle_services do |t|
      t.string :name
      t.text :description
      t.text :observation
      t.boolean :status

      t.timestamps null: false
    end
  end
end
