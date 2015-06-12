class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone
      t.integer :unit
      t.integer :field
      t.string :file

      t.timestamps null: false
    end
  end
end
