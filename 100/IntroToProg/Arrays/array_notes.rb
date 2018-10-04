
# The << which is called the shovel operator will push items to an array.
# The shovel and push methods will mutate the array permanently changing it.
# The syntax for the shovel push looks like the following:
# array << "some string"

=begin
new_array = [1, 2, 3, 4, 5]
new_array << 6
=end

# Often you'll have an array and you'll want to operate on many of the elements
# in the array the same way. Ruby has many methods that do these types of operations.

# The map method iterates over an array applying a block to each element of the array
# and returns a new array with those results. The collect method is an alias to map, and 
# they do the same thing.

# You'll notice after perfroming these methods, there is no change to the initial
# array. These methods are not destructive (meaning they won't mutate the caller).

=begin
a = [1, 2, 3, 4]
puts a.map { |num| num ** 2 }
puts
puts a.collect { |num| num ** 2 }
puts
puts a 
=end



################ Common Array Methods ##################

# include? - this method checks to see if the arguement given is included in the array.
# It has a question mark at the end of it which usually means that it will return a 
# boolean value. Example listed below:

a = [1, 2, 3, 4, 5]
puts a.include?(3)
puts a.include?(6)

# flatten - this method can be used to take an array that contains nested arrays and 
# crate a one-dimensional array. Example below:

a = [1, 2, [3, 4, 5], [6, 7]]
a.flatten
puts a

# each_index - this method iterates through the array much like the each method, 
# however the variable represents the index number as oppossed to the value at
# each index. It passes the index of the element into the block and you may do as 
# you please with it. The original array is returned.

a = [1, 2, 3, 4, 5]
a.each_index { |i| puts "This is index #{i}" }

# each_with_index - gives us the ability to manipulate both the value and the index by
# passing in two parameters to the block of code. The first is the value and the 
# second is the index. You can use them in the block.

a.each_with_index { |val, idx| puts "#{idx + 1}. #{val}"}


# sort - returns a sorted array. It's non-destructive.

a = [3, 1, 8, 4, 2, 9]
a.sort
puts a.sort

# product - can be used to combine two arrays in an interesting way. It returns an
# array that is a combination of all elements from all arrays.

# puts [1, 2, 3].product([4, 5])


# each vs. map - each provides a simple way to iterate over a collection in Ruby
# and is preferred to using the for loop. 

a = [1, 2, 3]
a.each { |e| puts e }

# you can modify elements and print them out
a.each { |e| puts e + 2 }


# map - also works on objects that allow for iteration. Like each, when given a block
# it invokes the given block once for each element in the collection. Where it really
# differs from each is the returned value. map creates and returns a new array
# containing the values returned by the block.

a = [1, 2, 3]
puts a.map { |x| x**2 }

# Use each for iteration and map for transformation
































