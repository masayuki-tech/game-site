class Post < ApplicationRecord
  validates :title, :text, presence: true
  validates :title, :text, presence: true
  belongs_to :genre, optional: true
  has_many :posts_tags, dependent: :destroy
  has_many :tags, through: :posts_tags

  # accepts_nested_attributes_for :posts_tags, allow_destroy: true

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end
