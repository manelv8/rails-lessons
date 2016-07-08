class User < ActiveRecord::Base
  enum role: [:admin, :youtuber, :blogueiro]

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable, :trackable, :rememberable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :confirmable
end
