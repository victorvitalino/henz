class CreateWorkTypes < ActiveRecord::Migration
  def change
    create_table :work_types do |t|
      t.string :name
      t.boolean :status

      t.timestamps null: false
    end
  end
end
