class UpdateAuthorid < ActiveRecord::Migration
  def up
    remove_column :blogs, :author_id
    add_column :blogs, :user_id, :integer
  end

  def down
    add_column :blogs, :author_id, :integer
    remove_column :blogs, :user_id
  end
end
