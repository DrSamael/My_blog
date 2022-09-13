class Post < ApplicationRecord
  has_one :published_post, dependent: :destroy

  # include Preprocessable
  # include Protectable

  enum status: %i[planned created development review published]

  def self.testotest
    p 'it is a class method!!!'
  end
end
