class CreateProviderTypes < ActiveRecord::Migration
  def change
    create_table :provider_types do |t|
      t.string :name
      t.boolean :status

      t.timestamps null: false
    end
  end
end
