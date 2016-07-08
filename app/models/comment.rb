class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :post, :name, :body, presence: true
  validates :body, length: { minimum: 3, maximum: 100 }
end
