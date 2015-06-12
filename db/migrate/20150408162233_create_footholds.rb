class CreateFootholds < ActiveRecord::Migration
  def change
    create_table :footholds do |t|
      t.string :name
      t.string :local
      t.string :responsible
      t.string :geolocation
      t.text :observation
      t.references :affiliate, index: true
      t.references :work, index: true

      t.timestamps null: false
    end
    add_foreign_key :footholds, :affiliates
    add_foreign_key :footholds, :works
  end
end
