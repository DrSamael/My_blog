class PublishedPost < ApplicationRecord
  belongs_to :post

  scope :top_five, -> { includes(:post).order(created_at: :desc).limit(5) }
end
