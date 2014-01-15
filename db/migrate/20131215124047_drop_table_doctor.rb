class DropTableDoctor < ActiveRecord::Migration
  def up
    drop_table :doctors
  end

  def down
  end
end
