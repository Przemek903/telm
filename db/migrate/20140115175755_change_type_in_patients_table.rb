class ChangeTypeInPatientsTable < ActiveRecord::Migration

  def change
    change_column :patients, :pesel, :string
  end
end
