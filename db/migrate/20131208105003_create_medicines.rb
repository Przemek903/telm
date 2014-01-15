class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :dose
      t.integer :hour
      t.string :type
      t.date :startDate
      t.date :endDate
      t.references :patient

      t.timestamps
    end
  end
end
