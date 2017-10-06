# This is a sample ruby class
class MyStuff
  def initialize
    @tangerine = 'And now a thousand years between'
  end

  attr_reader :tangerine

  def apple
    puts 'I AM CLASSY APPLES!'
  end
end

# A little class called Song
class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song
    @lyrics.each { |line| puts line }
  end
end

happy_bday = Song.new([
                        'Happy birthday to you',
                        "I don't want to get sued",
                        "So I'll stop right there"
                      ])

happy_bday.sing_me_a_song
