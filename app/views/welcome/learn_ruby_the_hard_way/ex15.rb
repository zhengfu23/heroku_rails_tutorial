stuff = {
  name: 'James',
  age: 24,
  height: 5 * 12 + 9
}

puts stuff[:height]

stuff[:city] = 'Philadelphia'

puts stuff[:city]

stuff[1] = 'what'
stuff[2] = 'hmmm'

puts stuff

stuff.delete(:city)
stuff.delete(1)
stuff.delete(2)

puts stuff
