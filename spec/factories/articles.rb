FactoryGirl.define do
  factory :article do |f|
    f.title "John Smith"
    f.text "hey@gmail.com"
    f.published true
    f.status "public"
  end

  factory :invalid_article, parent: :article do |f|
    # inherits from user
    f.title nil
  end
end

