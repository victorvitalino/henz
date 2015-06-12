class CreateBenefits < ActiveRecord::Migration
  def change
    create_table :benefits do |t|
      t.string :name
      t.text :description
      t.float :default_value
      t.text :observation
      t.boolean :status

      t.timestamps null: false
    end
  end
end
