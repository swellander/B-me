class Post < ApplicationRecord
  # deletes comments from db when removed from show page
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end
