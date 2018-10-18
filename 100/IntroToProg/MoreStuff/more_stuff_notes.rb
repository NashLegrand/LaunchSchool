

######################## REGEX ######################
# Regex - stands for regular expression. A regular expression is a sequence of characters that form pattern matching
# rules, and is then applied to a string to look for matches. Creating a regular expression starts with the 
# forward slash character (/). Inside two forward slashes you can place any characters you would like to match
# with the string. You can use the =~ operator to see if there is a match in the regular expression.

# Example. Let's say that we are looking for the letter "b" in a string "powerball". Also look at the 
# boolean_regex.rb file in this folder.

p "powerball" =~ /b/ # This expression returns a 5 meaning the first position is found at index 5 of the string

# match method - On top of the =~ operator, you can use the match method to perform regex comparisons. This
# method returns a MatchData object that describes the match or nil if there is no match. You can use the 
# MatchData object to act as a boolean value in your program. Also take a look at the boolean_matchdate.rb
# file in this folder.

p /b/.match("powerball")

# Regular expressions are rarely used, but certain problems are a perfect fit for them. While solving it 
# any other way would require monumental effort, using regex, you can solve it in one line. If you encounter
# a string pattern matching problem, remember to look into using regex.

# A deeper look into regex can be found at this site: https://launchschool.com/books/regex


########################## RUBY STANDARD CLASSES ############################
# When you have a specific action you need to perform, look for it first among Ruby's standard classes.



########################## VARIABLES AS POINTERS ###########################
# The easiest way to understand variables and pointers is to look at some examples.
a = "hi there"
b = a            # what is b in this code?
a = "not here"


# Variables are pointers to physical space in memory. In other words, variables are essentially labels we 
# create to refer to some physical memory address in your computer. It's important to understand that 
# different memory space can in fact hold the same value, but they are still different places in 
# memory. 

# How about this code
a = "hi there"
b = a
a << ", Bob"  # this line of code mutates the caller and modified the existing string which is also pointed to b

# The above code is the major point of this section. Some operations will mutate the actual address
# space in memory, thereby affecting all variables that point to that address space. Some operations
# will not mutate the address space in memory, and instead will re-point the variable to a new
# address space in memory. 

# This also applies to variables that are arrays, hashes, or any other data structure that has methods
# that mutate the caller. If you call a method that mutates the caller, it will change the value in that
# address space, and any variables are pointing there will be affected. Always pay attention whether your
# variables are pointing to the same object (space in memory) or if they are dealing with copies that
# occupy different address space in memory.

# Below are examples to try in IRB:

# What are a, b, and c? What if the last line was c = a.uniq!
a = [1, 2, 3, 3]
b = a
c = a.uniq

def test(b)
  b.map { |letter| "I like the letter: #{letter}"}
end

a = ["a", "b", "c"]
test(a)

# In the code above, what is a? What if we called map! instead of map from within the test method,
# how would that affect the value of a? Remember when we're passing in arguments to a method, we're essentially
# assigning a variable to another variable. like we did with b = a. Working with b in the test method may or 
# may not modify dthe a in the outer scope, depending on whether we modify the address space in memory that
# a is pointing to.


############################### BLOCKS AND PROCS #############################
# Blocks like parameters can be passed into methods just like normal variables. Example below.
def take_block(&block) # the ampersand (&) in the definition tells us that the arugument is a block.
  block.call
end

take_block do 
  puts "Block being called in the method!"
end

# The block must always be the last parameter in the method definition. When ready to use the method, we call
# it like any other metod: take_block in this example. The only difference is that because this method can accept
# a block, we can pass in a block of code using do/end. 

# SEE passing_block.rb file in this folder

# Procs - Procs are blocks that are wrapped in a proc object and stored in a variable to be passed around. 

talk = Proc.new do 
  puts "I am talking."
end

talk.call

# Procs can also take arguments if specified.

talk = Proc.new do |name| 
  puts "I am talking to #{name}"
end

talk.call("Bob")

############################# EXCEPTION HANDLING ##############################
# Exception Handling - Exception handling is a specific process that deals with errors in a manageable and 
# predictable way. The reserved word rescue will show up a lot in your Ruby career, so it's better to know
# what it is sooner rather than later.

# When your programs are interacting with the real world, there is a large amount of unpredictability. If
# a user enters bad information or a file-manipulating process gets corrupted, your program needs to know
# what to do when it runs into these exceptional conditions.

# Ruby has an Exception class that makes handling these errors much easier. It also has a syntactic 
# structure using the reserved words begin, rescue, and end to signify exception handling. The basic
# structure looks like this.

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end

# Often, it is necessary to use exception handling when your program is interacting with the 
# outside world, or anything that can behave in an unpredictable manner. One common occurence
# of this is when a nil value makes its way into our program. We have to be preparred for this.

# See the exception_example.rb file in this folder.

# exception_example.rb

names = ["bob", "joe", "steve", nil, "frank"]

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong"
  end
end

# We used a begin/rescue/end block to handle any exceptions that may happen within our block. In this 
# example, we have a nil value in our array. Therefore, when we go to call .length on nil, we get an
# error. When an exception, or error is raised, the rescue block will execute and then the program will
# continue to run as normal. If we didn't have the rescue block, the program would stop once it hit the 
# exception and we would lose the rest of the print out.

# You can also use the rescue reserved word in-line like the example below. See inline_exception_example.rb file
# in this folder.

# inline_exception_example.rb

zero = 0
p "Before each call"
zero.each { |element| p element } rescue p "Can't do that!"
p "After each call"

# The code above prints the following:

# Before each call
# Can't do that!
# After each call

# It does so because it isn't possible to call the method on an integer which is the value of the zero
# variable. If we remove the rescue block, the second puts method will not execute because the program
# will exit when it runs into the error. You can see why the word "rescue" is relevant here. We are 
# effectivley rescuing the program from coming to a grinding halt. If we give this same code the proper
# variable, our rescue block never gets executed.

# Take a look at the divide.rb file in this folder


############################### EXCEPTIONS & STACK TRACES ##################################
# An exception is synomous with an error.
















































