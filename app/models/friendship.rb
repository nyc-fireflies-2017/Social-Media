class Friendship < ApplicationRecord
  belongs_to :user
  
  validates :accepted, presence: true
end
