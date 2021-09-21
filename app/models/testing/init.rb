require_relative 'cart'
require_relative 'item'
require_relative 'order'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'

# Dir['app/models/testing/*.rb'].each { |file| require_relative file }

# cart = Cart.new
# cart.add_item(Item.new({price: 77, weight: 600}))
# cart.add_item(Item.new({weight: 800}))
# cart.validate
# cart.remove_item

# p cart

# item = VirtualItem.new({ price: 355, height: 354, weight: 120})
# item2 = RealItem.new({ price: 202, height: 1024, weight: 500})
# item3 = RealItem.new({ price: 90, height: 5000, weight: 600})

# item.info {|value| p value}
# item2.info {|value| p value}

# cart = Cart.new
# cart.add_item(item)
# cart.add_item(item2)
# cart.add_item(item3)
# cart.remove_item
# cart.delete_invalid_items
# p '-----------------------'
# p cart

# p item.respond_to? :weight
# p item2.respond_to? :weight

# p item.price_with_discount

# p '##################################'
# p cart.items.size
#
# order = Order.new
# order.add_item(item)
# order.add_item(item2)
# order.add_item(item3)
# order.remove_item

# p order.items.size
# p cart.items
# p order.items

# p '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
# p order.count_valid_items

@items = []
@items << VirtualItem.new({ price: 355, height: 354, weight: 720})
@items << RealItem.new({ price: 202, height: 1024, weight: 500})
@items << RealItem.new({ price: 500, height: 5000, weight: 600})