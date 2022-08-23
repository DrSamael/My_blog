class NewBadModel < ApplicationRecord
  def initialize(good_values = nil)
    @good_values = good_values
  end

  def excellent?
    @good_values.present?
  end
end
