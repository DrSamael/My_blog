require_relative 'init'
require_relative 'cart'

cart = Cart.new

ARGV.each do |arg|
  @items.each do |obj|
    cart.add_item(obj) if arg == obj.weight.to_s
  end
end

p cart.items
p ARGV