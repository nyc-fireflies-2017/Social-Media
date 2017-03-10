class User < ApplicationRecord
  has_many :friendships
  has_many :friends, through: :friendships, source: :friend
  has_many :posts
  has_many :likes


  has_secure_password

  validates :name, :username, :email, presence: true
  
end
