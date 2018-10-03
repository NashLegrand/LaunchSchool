# recursion_practice.rb

# Recursion is another way to create a loop in Ruby. Recursion is the act of calling
# a meethod from within itself.

# Example: Let's say you wanted to know what the double of a number was, then the
# double of that number, etc. Let's say you wanted to double the number until the
# pre-doubled number is 10 or greater. Use the method below to acocmplish this.

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end


def countDown(start)
  puts start
  if start > 0
    countDown(start -1)
  end
end

countDown(15)