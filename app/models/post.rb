class Post < ApplicationRecord
  has_one :published_post, dependent: :destroy

  include Preprocessable
  include Protectable

  def self.testotest
    p 'it is a class method!!!'
  end
end
