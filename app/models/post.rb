class Post < ApplicationRecord
  validates :title, :text, presence: true
  validates :title, :text, presence: true
  belongs_to :genre, optional: true
  has_many :posts_tags
  has_many :tags, through: :posts_tags

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end
