class Post < ActiveRecord::Base
  self.per_page = 5

  enum published: [:published, :not_published]

  has_many :comments
  belongs_to :user

  validates :title, presence: true
end
