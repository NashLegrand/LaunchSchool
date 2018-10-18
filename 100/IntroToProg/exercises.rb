
# 1. Use the each method of Array to iterate over the array below and print out 
# each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#arr.each { |num| p num }

# 2. Same as above but on print out values greater than 5.

#arr.each { |num| p num if num > 5 

# 3. Use the same array from number 2, use the select method to extract all odd 
# numbers into a new array

arr.select { |num| num.odd? }

# 4. Append "11" to the end of the original array. Prepend "0" to the begining.

arr.push(11)
arr.unshift(0)
p arr

# 5. Get rid of "11" and append a "3"

arr.each do |num|
  if num == 11
    arr[num] =3
  end
end

p arr

# 6. Get rid of duplicates without specifically removing any one value.
arr = arr.uniq
p arr

# 7. What's the major difference between an Array and a Hash? -> An array stores a 
#list of data, while a hash contains a key value pair for referencing specific 
# data.

# 8. Create a hash using both Ruby syntax styles.

hash1 = {name: "Bob", age: 41, hair_color: "Brown"}
hash2 = {:name => "Bob", :age => 41, :hair_color => "Brown"}

# 9. Suppose you have a hash h = {a: 1, b: 2, c: 3, d: 4}
# - Get the value of key b:
# - Add to this hash the key: value pair {e: 5}
# - Remove all key: value pairs whose value is less than 3.5

h = {a: 1, b: 2, c: 3, d: 4}
p h[:b]
h[:e] = 5
h.delete_if { |key, value| value < 3.5 }


# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)
# - Hash values can be arrays and you can have an array of hashes.
# Examples:

array_of_hashes = [{:name "Bob", age: 41}, {:name "Nash", age: 40}]
hash_of_names = {names: ["James", "Bill", "Ricky"]}

# 11. Look at Rails/Ruby APIs online ans say which one you like best and why.


# 12. Give the following data structues. Write a program that moves the 
# information from the array into the empty hash that applies to the correct
# person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454" ]]

contacts = {"Joe Smith"=>{}, "Sally Johnson"=>{}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13. Using the contacts hash, demonstrate how you would access Joe's email and
# Sally's phone number?

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# 14. 















































