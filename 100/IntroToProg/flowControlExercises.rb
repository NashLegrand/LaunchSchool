
# Exercise 1
# 1. False
# 2. False
# 3. True... You got this wrong should be False
# 4. True
# 5. True




# Exercise 2
# Method that will take a string and convert to all caps if length > 10


def word_convert(word)
  if word.length > 10
    word.upcase
  else
    word
  end
end

puts word_convert("This should all be in upcase.")
puts word_convert("notupcase")




# Exercise 3
puts "Please enter a number between 0 and 100"
user_num = gets.chomp.to_i
if user_num >= 0 && user_num <= 50
  puts "Number is between 0 and 50"
elsif user_num > 50 && user_num <= 100
  puts "Number is between 51 and 100"
else user_num > 100
  puts "Number is greater than 100" 
end


# Exercise 4
# 1. False
# 2. Did you
# 3. Alright Now

'4' == 4 ? puts("TRUE") : puts("FALSE")

x = 2
if ((x * 3) / 2) == (4 + 4 -x -3)
  puts "Did you get it right"
else
  puts "Did you?"
end

y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright"
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

#Exercise 5

def alright_test()
  y = 9
  x = 10
  case
  when (x + 1) <= (y)
    puts "Alright"
  when (x + 1) >= (y)
    puts "Alright now!"
  when (y + 1) == x
    puts "ALRIGHT NOW!"
  else
    puts "Alrighty!"
  end
end

puts alright_test()


# Exercise #6
# The solution to this exercise is to add an "end" after the else statement.

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)




























  