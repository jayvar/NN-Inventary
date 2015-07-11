class CreateLaboratories < ActiveRecord::Migration
  def change
    create_table :laboratories do |t|
      t.string :name
      t.string :aforo
      t.text :description
      t.references :employe, index: true

      t.timestamps
    end
  end
end
