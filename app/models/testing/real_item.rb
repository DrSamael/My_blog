class RealItem < Item
  attr_accessor :weight

  def initialize(options)
    @weight = options[:weight]
    super
  end

  def info
    if block_given?
      yield self.weight
      super
    end
  end
end