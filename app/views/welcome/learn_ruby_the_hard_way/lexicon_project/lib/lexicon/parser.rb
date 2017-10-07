# We start off with a exception class
class ParserError < RuntimeError
  def initialize(error_msg)
    puts error_msg
  end
end

# A sentence class that represent a sentence object
class Sentence
  def initialize(subject, verb, obj)
    @subject = subject[1]
    @verb    = verb[1]
    @obj     = obj[1]
  end

  attr_reader :subject
  attr_reader :verb
  attr_reader :obj
end

def peek(word_list)
  return unless word_list
  word = word_list[0]
  word[0]
end

def match(word_list, expecting)
  return unless word_list
  word = word_list.shift
  return unless word[0] == expecting
  word
end

def skip(word_list, word_type)
  match(word_list, word_type) while peek(word_list) == word_type
end

def parse_subject(word_list)
  skip(word_list, 'stop')
  next_word = peek(word_list)

  if next_word == 'noun'
    match(word_list, 'noun')
  elsif next_word == 'verb'
    %w[noun player]
  else
    raise ParserError, 'Expected a noun or direction next.'
  end
end

def parse_verb(word_list)
  skip(word_list, 'stop')

  raise ParserError, 'Expected a verb next.' unless peek(word_list) == 'verb'
  match(word_list, 'verb')
end

def parse_object(word_list)
  skip(word_list, 'stop')
  next_word = peek(word_list)

  if next_word == 'noun'
    match(word_list, 'noun')
  elsif next_word == 'direction'
    match(word_list, 'direction')
  else
    raise ParserError, 'Expected a noun or direction next.'
  end
end

def parse_sentence(word_list)
  subject = parse_subject(word_list)
  verb    = parse_verb(word_list)
  obj     = parse_object(word_list)

  Sentence.new(subject, verb, obj)
end
