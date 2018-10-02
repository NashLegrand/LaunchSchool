
# countdown.rb


=begin
# Using a While Loop
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"
=end


=begin
# Using an Until Loop
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end
puts "It's magic..."
=end


# Using a For Loop - Most Rubyist avoid for loops

x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

puts "Done, and it's still magic!!!"