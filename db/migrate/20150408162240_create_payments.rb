class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :value
      t.text :description
      t.boolean :status
      t.date :deadline
      t.references :provider, index: true
      t.references :payment_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :payments, :providers
    add_foreign_key :payments, :payment_types
  end
end
