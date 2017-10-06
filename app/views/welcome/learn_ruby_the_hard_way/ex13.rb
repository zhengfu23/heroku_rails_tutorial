i = 0
case i
when 0 then puts 'i is 0'
when 1 then puts 'i is 1'
else puts 'i is something else'
end

# Sample class of a person
class Person
  def initialize(name)
    @name = name
  end

  def do_with_name
    yield(@name)
  end

  def do_with_name_2
    @name
  end
end

person = Person.new('James')

# invoking the method passing a block

person.do_with_name do |name|
  puts "Hey, his name is #{name}"
end

person.do_with_name do |name|
  puts "Hey, so he is called #{name}"
end

puts "Hey, his name is also #{person.do_with_name_2}"

puts "Hey, you sure his name is #{person.do_with_name { |w| w }}"

grades = {
  CS_2110: 'A',
  CS_4410: 'A',
  CS_4780: 'A'
}

puts "My grade for CS 2110 is: #{grades[:CS_2110]}"