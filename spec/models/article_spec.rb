require 'rails_helper'

RSpec.describe Article, type: :model do
  describe Article do
    it 'has valid article' do
      # use create, just FactoryGirl(:article) is deprecated now
      expect(FactoryGirl.create(:article)).to be_valid
    end
  end
end
