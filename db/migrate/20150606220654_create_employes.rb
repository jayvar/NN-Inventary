class CreateEmployes < ActiveRecord::Migration
  def change
    create_table :employes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
