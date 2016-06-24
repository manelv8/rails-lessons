class Post < ActiveRecord::Base
  self.per_page = 5

  has_many :comments

  validates :title, presence: true
end
