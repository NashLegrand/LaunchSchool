# practice_each.rb


# Understand that most Rubyist prefer to use iterators over loops
# Memorize the iterators syntax

names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]

x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end