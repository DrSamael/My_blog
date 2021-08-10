class Cart #< ApplicationRecord
  # belongs_to :person

  attr_accessor :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def remove_item
    @items.pop
  end

  def validate
    @items.each do |item|
      p 'No price' if item.price.nil?
    end
  end

  def delete_invalid_items
    @items.delete_if { |i| i.price.nil? }
  end
end
