# This exercise is on while-loop of ruby

i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers << i

  i += 1
  puts 'Numbers now: ', numbers
  puts "At the bottom i is #{i}"
end

puts 'The numbers: '

numbers.each { |num| puts num }

numbers.each do |num|
  puts num
end
