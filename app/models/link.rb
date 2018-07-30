class Link < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  scope :with_likes_count, -> { Link.left_joins(:likes).select('COUNT(likes.id) as likes_count, links.header, links.href, links.id').group(:id) }

  has_one_attached :thumbnail
end
