class AddCommentToMedicine < ActiveRecord::Migration
  def change
    add_column :medicines, :comment, :text
  end
end
