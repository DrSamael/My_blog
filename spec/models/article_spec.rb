# require 'rails_helper'
#
# RSpec.describe Article, type: :model do
#   describe Article do
#     it 'has valid article' do
#       # use create, just FactoryGirl(:article) is deprecated now
#       expect(FactoryGirl.create(:article)).to be_valid
#     end
#
#     it "is invalid without a title" do
#       # use build to skip validation, it will not call 'save' method
#       # when use create, our test will always fail
#       expect(FactoryGirl.build(:article, title: nil)).to_not be_valid
#     end
#
#     it "is invalid without text" do
#       expect(FactoryGirl.build(:article, text: nil)).to_not be_valid
#     end
#   end
# end
