
# Exercises in the loops chapter of the Learn to Programming Book.

# 1. What does the each method in the following program return after it's finished 
# executing?

# Original Answer - the code below will loop through the array adding one to each item. The
# code should return the following 2, 3, 4, 5, 6.

# Follow up Answer - this appeared to easy, but I was mistaken. While the each iterator
# does add one to each item, the original array is still returned because it was never
# modified. The correct answer is [1, 2, 3, 4, 5]


x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# 2. Write a while loop that takes input from the user, performs an action, 
# and only stops when the user types "STOP". Each loop can get info from 
# the user.

while true
  puts "Give me an input!"
  answer = gets.chomp.upcase
  if answer == "STOP"
    puts "Ok, you've had enough."
    break
  else
    puts "Do you want some more of this?"
  end
end

# 3. Use the each_with_index method to iterate through an array of your
# creation that prints each index and value of the array.

x = ["One", "Two", "Three", "Four", "Five"]
x.each_with_index do |value, index|
  puts "#{index}: #{value}"
end

# 4. Write a method that counts down to zero using recurision.

def count_down(start)
  puts start
  if start > 0
    count_down(start -1)
  end
end


count_down(10)


