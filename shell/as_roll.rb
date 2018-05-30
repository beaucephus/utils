sum = 0
6.times do
  rolls = []
  4.times do
    rolls << (rand * 6).ceil
  end
  rolls.delete rolls.min
  sum += rolls.sum
  puts rolls.sum
end
puts "sum: #{sum}"
