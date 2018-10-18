
# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does,
# print out the word.

strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

strings.each do |string|
  if string.downcase =~ /lab/
    p string
  end
end

# 2. What will the following program print to the screen? What will it return?

=begin
def execute(&block)
  block
end

execute { p "Hello from inside the execute method! " }
=end

# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { p "Hello from inside the execute method! " }

# 5. Because there is no "&" symbol in front of the block.
