require_relative 'cart'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'
# Dir['app/models/testing/*.rb'].each { |file| require_relative file }

# cart = Cart.new
# cart.add_item(Item.new({price: 77, weight: 600}))
# cart.add_item(Item.new({weight: 800}))
# cart.validate
# cart.remove_item

# p cart

item = VirtualItem.new({ price: 355, height: 354})
item2 = RealItem.new({ price: 75, height: 1024, weight: 500})

item.info {|value| p value}
item2.info {|value| p value}

cart = Cart.new
cart.add_item(item)
cart.add_item(item2)
cart.delete_invalid_items
# p '-----------------------'
# p cart

# p item.respond_to? :weight
# p item2.respond_to? :weight

p item.price_with_discount
