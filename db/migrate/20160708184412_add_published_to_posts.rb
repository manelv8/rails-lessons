class AddPublishedToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :published, :integer, default: 0
  end
end
