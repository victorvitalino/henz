class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :name
      t.string :acronym
      t.boolean :status

      t.timestamps null: false
    end
  end
end
