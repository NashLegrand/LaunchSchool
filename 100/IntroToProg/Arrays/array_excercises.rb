
# 1. Write a program that checks to see if the number appears in the array.

=begin
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number)
  puts "#{number} is in the array."
else
  puts "#{number} wasn't found."
end
=end


# 2. What will the following programs return? What is the value of arr after each?

# program 1
=begin
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
puts arr


# program 2
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
puts arr
=end


# 3. How do you return the word "example" from the following array?

#arr = [["test", "hello", "world"], ["example", "mem"]]
#arr.flatten.each { |i| puts i if i.include?("example")}

# The launch school solution was arr.last.first
# I used my code first, operating under the assumption that i would know if the 
# value was present in the array. 
# I originally struggled with the .first.last method/s, but now i get it. In this example
# arr.last.first looks for the last element in the outter array and then the first 
# element in that inner array. The answer returns "example".


# 4. What does each method return in the following example?

=begin
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) # returns 3
arr.index[5] # returns 8 ** I was wrong. This returns an error.
arr[5] # returns 8
=end

# 5. What is the value of a, b, c in the following?

string = "Welcome to America!"
a = string[6] # e
b = string[11] # A
c = string[19]  # nil


# 6. You have to modify the item using the array index.

# 7. 

array1 = [2, 3, 4, 5, 6]

array2 = array1.map { |i| i + 2 }

p array1
p array2















