class AddUserToPostsAndComments < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.belongs_to :user, foreign_key: true
    end

    change_table :comments do |t|
      t.belongs_to :user, foreign_key: true
    end
  end
end
