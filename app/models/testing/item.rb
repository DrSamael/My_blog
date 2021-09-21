class Item
  attr_accessor :price, :weight, :height

  def initialize(options)
    @price = options[:price]
    # @weight = options[:weight]
    @height = options[:height] || 22
  end

  def info
    if block_given?
      yield self
      # yield height
    else
      p 'nonononononono'
    end
  end

  # def price=(value)
  #   @price = value
  # end

  def self.discount
    if Time.now.month == 8
      0.5
    else
      0.1
    end
  end

  def price_with_discount
    (@price - @price * self.class.discount) + tax
  end

  private

  def tax
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end

    cost_tax = if @price > 5
                 @price * 0.2
               else
                 @price * 0.1
               end
    type_tax + cost_tax
  end

end





# item_1 = Item.new({price: 77,  weight: 600, height: 15})
# item_2 = Item.new({price: 80,  weight: 10000})
#
# # item_1.price=100
# # item_1.height=250
#
# p item_1
# p item_2


