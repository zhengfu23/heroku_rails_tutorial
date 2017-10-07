require 'lexicon/lexicon.rb'
require 'test/unit'

# This is the class to test the lexicon.rb
class TestLexicon < Test::Unit::TestCase
  def test_directions
    assert_equal(Lexicon.scan('north'), [%w[direction north]])
    result = Lexicon.scan('north south east')

    assert_equal(result, [
                   %w[direction north],
                   %w[direction south],
                   %w[direction east]
                 ])
  end

  def test_verbs
    assert_equal(Lexicon.scan('go'), [%w[verb go]])
    result = Lexicon.scan('go kill eat')
    assert_equal(result, [
                   %w[verb go],
                   %w[verb kill],
                   %w[verb eat]
                 ])
  end

  def test_stops
    assert_equal(Lexicon.scan('the'), [%w[stop the]])
    result = Lexicon.scan('the in of')
    assert_equal(result, [
                   %w[stop the],
                   %w[stop in],
                   %w[stop of]
                 ])
  end

  def test_nouns
    assert_equal(Lexicon.scan('bear'), [%w[noun bear]])
    result = Lexicon.scan('bear princess')
    assert_equal(result, [
                   %w[noun bear],
                   %w[noun princess]
                 ])
  end

  def test_numbers
    assert_equal(Lexicon.scan('1234'), [['number', 1234]])
    result = Lexicon.scan('3 91234')
    assert_equal(result, [
                   ['number', 3],
                   ['number', 91_234]
                 ])
  end

  def test_errors
    assert_equal(Lexicon.scan('ASDFADFASDF'), [%w[error ASDFADFASDF]])
    result = Lexicon.scan('bear IAS princess')
    assert_equal(result, [
                   %w[noun bear],
                   %w[error IAS],
                   %w[noun princess]
                 ])
  end
end
