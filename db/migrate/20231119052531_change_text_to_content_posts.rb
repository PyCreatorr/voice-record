class ChangeTextToContentPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :content, :text
    remove_column :posts, :text
  end
end
