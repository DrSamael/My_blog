module ItemContainer

  module ClassMethods
    MIN_PRICE = 100

    def min_price
      MIN_PRICE
    end
  end

  module InstanceMethods
    def add_item(item)
      @items.push(item) unless item.price < self.class.min_price
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

    def count_valid_items
      @items.count {|i| i.price}
    end
  end

  def self.included(classes)
    classes.extend ClassMethods
    classes.class_eval { include InstanceMethods }
  end

end