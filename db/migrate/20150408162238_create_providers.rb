class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :cnpj
      t.text :address
      t.string :telphone
      t.string :fax
      t.string :cep
      t.references :state, index: true
      t.references :city, index: true
      t.string :state_number
      t.string :email
      t.string :contact_name
      t.string :contact_telphone
      t.string :contact_email
      t.text :observation
      t.references :work, index: true
      t.references :affiliate, index: true
      t.references :provider_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :providers, :states
    add_foreign_key :providers, :cities
    add_foreign_key :providers, :works
    add_foreign_key :providers, :affiliates
    add_foreign_key :providers, :provider_types
  end
end
