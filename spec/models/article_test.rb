require 'test_helper'

class UserArticle < ActiveSupport::TestCase
  test 'valid article' do
    article = Article.new(title: "John Smith", text: 'john@example.com', published: true, status: "public")
    assert article.valid?
  end

  test 'invalid without title' do
    article = Article.new(text: 'john@example.com', published: true, status: "public")
    refute article.valid?, 'article is valid without a title'
    assert_not_nil article.errors[:title], 'no validation error for title present'
  end

  test 'invalid without text' do
    article = Article.new(title: "John Smith", published: true, status: "public")
    refute article.valid?
    assert_not_nil article.errors[:text]
  end
end