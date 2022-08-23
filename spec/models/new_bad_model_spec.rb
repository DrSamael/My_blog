require 'rails_helper'

RSpec.describe NewBadModel, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'when we have good values' do
    let(:nbm_inst) { NewBadModel.new(good_values: [1, 2, 3, 4, 5]) }

    it 'return true for the question of excellence' do
      expect(nbm_inst.excellent?).to eq(true)
    end
  end
end
