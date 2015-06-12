class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.float :value
      t.references :user, index: true
      t.references :benefit, index: true

      t.timestamps null: false
    end
    add_foreign_key :costs, :users
    add_foreign_key :costs, :benefits
  end
end
