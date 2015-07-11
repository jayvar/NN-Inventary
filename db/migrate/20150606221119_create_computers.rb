class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :name
      t.string :serie
      t.text :description
      t.references :laboratory, index: true

      t.timestamps
    end
  end
end
