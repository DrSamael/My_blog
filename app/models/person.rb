class Person < ApplicationRecord
  has_one :cart, dependent: :destroy

  delegate :name, to: :cart, allow_nil: true, prefix: :corzina
  # Person.first.corzina_name
end
