class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable, :trackable, :rememberable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :confirmable
end
