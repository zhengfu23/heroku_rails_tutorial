require './scene.rb'
# A subclass of Scene - Death.
class Death < Scene
  @quips = [
    'You died. You kinda suck at this.',
    'Your mom would be proud...if she were smarter.',
    'Such a loser.',
    "I have a small puppy that's better at this."
  ]
  def enter
    puts @quips[rand(0..(@quips.length - 1))]
    exit(1)
  end
end
