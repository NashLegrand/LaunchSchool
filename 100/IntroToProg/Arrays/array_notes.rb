
# The << which is called the shovel operator will push items to an array.
# The shovel and push methods will mutate the array permanently changing it.
# The syntax for the shovel push looks like the following:
# array << "some string"

new_array = [1, 2, 3, 4, 5]
new_array << 6


# Often you'll have an array and you'll want to operate on many of the elements
# in the array the same way. Ruby has many methods that do these types of operations.

# The map method iterates over an array applying a block to each element of the array
# and returns a new array with those results. The collect method is an alias to map, and 
# they do the same thing.

# You'll notice after perfroming these methods, there is no change to the initial
# array. These methods are not destructive (meaning they won't mutate the caller).

a = [1, 2, 3, 4]
puts a.map { |num| num ** 2 }
puts
puts a.collect { |num| num ** 2 }
puts
puts a 

