class Kitten < Cat

  def initialize(options = nil)
    @name = options[:name]
    super
  end

  attr_accessor :name

  def run
    super
    p 'I am running to !!!!'
  end

end