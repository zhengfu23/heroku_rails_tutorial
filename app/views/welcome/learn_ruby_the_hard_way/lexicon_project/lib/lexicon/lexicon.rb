# This is the source code for class Lexicon
class Lexicon
  def self.scan(input)
    words = input.split
    result = []
    words.each do |word|
      result.push([id_keyword(word), number?(word) ? Integer(word) : word])
    end
    result
  end

  def self.id_keyword(word)
    result = case word
             when 'north', 'south', 'east', 'west' then 'direction'
             when 'go', 'kill', 'eat' then 'verb'
             when 'the', 'in', 'of' then 'stop'
             when 'bear', 'princess' then 'noun'
             else 'error'
             end
    if number?(word)
      result = 'number'
    end
    result
  end

  def self.number?(word)
    begin
      Integer(word)
      return true
    rescue
      return false
    end
  end
end