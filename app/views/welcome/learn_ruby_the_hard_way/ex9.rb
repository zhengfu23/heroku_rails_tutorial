# This exercise is focused on arrays and loops
hairs = %w[brown blond red]
eyes = %w[brown blue green]
weights = [1, 2, 3, 4]

weights.each do |number|
  puts "This is weight #{number}"
end

hairs.each do |hair|
  puts "This is kind of hair #{hair}"
end

eyes.each { |eye| puts "I have #{eye} eyes" }

elements = []

(0..5).each do |i|
  puts "adding #{i} to the list."
  elements << i
end

elements.each { |i| puts "Element was: #{i}" }