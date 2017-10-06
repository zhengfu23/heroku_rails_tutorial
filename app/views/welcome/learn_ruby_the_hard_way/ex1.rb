puts "Hello World!"
#puts "Hello Again"
#puts "I like typing this."
#puts "This is fun"
#puts "Yay! Printing."
#puts "I'd much rather you 'not'."
#puts 'I "said" do not touch this.'

puts "WHat is 3 + 2? #{3 + 2}"

formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
  first:  "I had this thing.",
  second: "That you could type up right.",
  third:  "But it didn't sing.",
  fourth: "So I said goodnight."
}

months = "\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug\nOct\nNov\nDec"

puts "Here are the months: #{months}"

puts %q{
There's something going on here.
With htis weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}

puts "I am 6'2\" tall."

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
