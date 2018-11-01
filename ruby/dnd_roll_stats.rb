#!/usr/local/bin/ruby

stats = []
loop do
  6.times do
    rolls = []
    4.times do
      rolls << rand(1..6)
    end
    stats << rolls.sort[1..-1].sum
  end
  break if stats.min < 8 && stats.max > 16
  stats = []
end

puts stats
