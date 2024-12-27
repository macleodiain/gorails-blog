class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  scope :sorted, -> { order(created_at: :desc) }
end
