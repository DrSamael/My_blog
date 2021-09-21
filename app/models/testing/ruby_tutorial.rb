class RubyTutorial

  def self.description
    a, b, c = 1, 2, 3

    for i in 0..5
      p i
    end
    for i in 0...5
      p i
    end

    p '__________________________________'

    array = %w[sasha dasha pasha]
    array.map { |i| p i }
    # array.map(&method(:p))
    p '___________________________________'

    p 'SASHA'.downcase
    p 'sasha'.upcase
    p 'sa da ma za'.capitalize

    string = 'sasha masha'
    p string.chars
    p string.split
    p '_________________________________'

    p array.find_index('dasha')
    p '_________________________________'

    array2 = [1, 2, 3, 4]
    array2.find_all { |num| p num.odd? }
    array2.find_all { |num| p true }
    array2.find_all { |num| p num.even? }
    p array2.find_all { |num| num.even? }
    p '_________________________________'

    array3 = [108, 21, 351, 4156]
    p array3.map { |num| num.to_s.length }
    p '_________________________________'

    hash = { car: 'audi', name: 'a8', engine: 'v12' }
    p hash.reverse_each.to_h
    p '_________________________________'

    [ ['audi', 'black', 2008], ['bmw', 'red', 2014] ].each do |car, color, year|
      p "car: #{car}, color: #{color}, year: #{year}"
    end

    p hash.empty?
    p hash.size
    p hash.keys
    p hash.include? :car
    p hash.sort

  end

end

RubyTutorial.description