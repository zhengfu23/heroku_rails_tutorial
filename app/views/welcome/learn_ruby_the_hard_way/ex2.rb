print "How old are you? (years) "
age = gets.chomp.to_i
print "How tall are you? (inches) "
height = gets.chomp
print "How much do you weigh? (pounds) "
weight = gets.chomp

puts "So, you're #{age} years old, #{height} inches tall and weighs #{weight} pounds."



print "How much money do you own? "
net_worth = gets.chomp.to_f

puts "You are poor! Only have #{net_worth}! Boo!"
