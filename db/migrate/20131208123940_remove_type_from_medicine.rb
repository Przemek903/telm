class RemoveTypeFromMedicine < ActiveRecord::Migration
  def up
    remove_column :medicines, :type
  end

  def down
    add_column :medicines, :type, :string
  end
end
