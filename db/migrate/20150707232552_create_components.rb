class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.text :description
      t.references :computer, index: true

      t.timestamps
    end
  end
end
