class AddColumnPostToComment < ActiveRecord::Migration
  def up
    change_table :comments do |t|
      t.belongs_to :post, index: true, nil: false
    end

    Comment.find_each do |comment|
      comment.update post_id: Post.all.sample.id
    end
  end

  def down
    remove_column :comments, :post_id
  end
end
