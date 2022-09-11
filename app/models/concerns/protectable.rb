module Protectable
  extend ActiveSupport::Concern

  included do
    def protected?
      true
    end
  end

  class_methods do
    def test
      p 'Protectable test'
    end
  end
end