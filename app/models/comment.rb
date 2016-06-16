class Comment < ActiveRecord::Base
  validates :name, :body, presence: true
  validates :body, length: { minimum: 3, maximum: 100 }
end
