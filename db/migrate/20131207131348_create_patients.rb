class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.integer :room
      t.integer :pesel
      t.text :comment

      t.timestamps
    end
  end
end
