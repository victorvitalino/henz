class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :local
      t.string :geolocation
      t.string :responsible
      t.references :work_type, index: true
      t.references :affiliate, index: true

      t.timestamps null: false
    end
    add_foreign_key :works, :work_types
    add_foreign_key :works, :affiliates
  end
end
