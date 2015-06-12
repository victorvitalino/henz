class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.string :name
      t.string :account
      t.string :bank
      t.boolean :status

      t.timestamps null: false
    end
  end
end
