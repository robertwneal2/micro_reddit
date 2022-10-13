class Post < ApplicationRecord
  validates :title, :url, :user_id, presence: true
  validates :url, uniqueness: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
