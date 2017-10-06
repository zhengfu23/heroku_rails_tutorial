ten_things = 'Apples Oranges Crows Telephone Light Sugar'

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = %w[Day Night Song Frisbee Corn Banana Girl Boy]

while stuff.length != 10
  another_one = more_stuff.pop
  puts "Adding #{another_one}"
  stuff.push(another_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop
puts stuff.shift
puts stuff.join(' ')
puts stuff[3..5].join('#')