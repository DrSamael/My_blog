arr = %w[masha lena vika]
hash = {name: 'Dahsa', age: 14, height: 150}

arr.push('sveta')

p arr
hash.each_key { |i| p i }

arr.each_with_index {|val, index| p "#{index} + #{val}"}

# File.open("block.txt", "w") { |y| y.puts "SSSSSSSSSSSSSSS" }