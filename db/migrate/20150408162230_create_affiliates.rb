class CreateAffiliates < ActiveRecord::Migration
  def change
    create_table :affiliates do |t|
      t.string :cep
      t.string :responsible
      t.string :geolocation
      t.references :city, index: true
      t.references :state, index: true

      t.timestamps null: false
    end
    add_foreign_key :affiliates, :cities
    add_foreign_key :affiliates, :states
  end
end
