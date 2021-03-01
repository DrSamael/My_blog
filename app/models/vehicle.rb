class Vehicle# < ApplicationRecord
  include ActiveModel::AttributeMethods

  attribute_method_prefix 'reset_'
  attribute_method_suffix '_highest?'
  define_attribute_methods 'price'

  attr_accessor :price

  private
  def reset_attribute(attribute)
    send("#{attribute}=", 0)
  end

  def attribute_highest?(attribute)
    send(attribute) > 10
  end


end
