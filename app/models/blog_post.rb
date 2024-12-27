class BlogPost < ApplicationRecord
  has_rich_text :content
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  scope :sorted, -> { order(created_at: :desc) }
end
