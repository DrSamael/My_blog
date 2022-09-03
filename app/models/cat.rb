class Cat

  def initialize(options={})
    @height = options[:height]
    @weight = options[:weight]
  end

  attr_accessor :height, :weight

  def run
    p 'I am running'
  end
end