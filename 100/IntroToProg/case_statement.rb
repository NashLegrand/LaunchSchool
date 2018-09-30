

########### Case Statements ##############

# Case statements have similar functionaility to an if statement but with a slightly
# different interface.

# Case statements used the reserved words case, when, else, and end. Example below:

=begin
a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5 or 6"
end
=end

# You can save the result of a case statement into a variable

=begin
a = 5

answer = case a
  when a == 5
    "a is 5"
  when a == 6
    "a is 6"
  else
    "a is neither 5 or 6"
  end

puts answer
=end


# if assigned to a variable, you don't have to give case an arugument

a = 5

answer = case 
when a == 5
  "a is 5"
when a == 6
  "a is 6"
else
  "a is neither 5 or 6"
end

puts answer