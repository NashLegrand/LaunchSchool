# fibonacci.rb

# You can learn more about fibonacci at the web address below
# https://en.wikipedia.org/wiki/Fibonacci_number

# Fibonacci numbers are basically a sequence of numbers in which each number is the 
# sum of the previous two numbers in the sequence.

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)