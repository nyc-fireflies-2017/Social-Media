class Post < ApplicationRecord
  belongs_to :user
  belongs_to :author, foreign_key: :user_id, class_name: 'User'
  validates :content, presence: true

  def self.recent
    self.all.order(created_at: :desc).limit(5)
  end
end
