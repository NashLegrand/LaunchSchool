# inline_exception_example.rb

zero = 0
p "Before each call"
zero.each { |element| p element } rescue p "Can't do that!"
p "After each call"