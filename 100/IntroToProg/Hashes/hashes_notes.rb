
# A hash is a data structure that stores items by associated keys. This is contrasted 
# against arrays, which store items by an ordered index. Entries in hashes are often
# reffered to as key value pairs.

# Most commonly, a hash is created using symbols as keys and any data types as values.
# All key value pairs in a hash are surrounded by curly braces {} and comma seperated.

# Hashes can be created with two syntaxes. The older syntax comes with a => sign
# to seperate the key and the value.

old_syntax_hash = {:name => "bob"}

# The newer syntax is much simpler.

new_hash = {name: "bob"}

# You can also have a hash with many key-value pairs

person = {height: "6 ft", weight: "160"}

# You can add to an existing hash

person[:hair] = "brown"
person[:age] = 62

# Use delete to remove something from an existing hash

person.delete(:age)


# Retrive information from a hash
person[:weight]

# If you want to merge to hashes together
person.merge!(new_hash)


######### Common Hash Methods #############

# has_key? - this method allows you to check if a hash contains a specific key. It
# returns a boolean value
name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
person.has_key?("Bob")

# select - the select method allow you to pass a block and will return any key-value
# pairs that evaluate to true when ran through the block.

name_and_age.select { |k, v| k == "Steve" }
name_and_age.select { |k, v| (k == "Bob") || (v == 19)}


# fetch - the fetch method allows you to pass a given key and it will return the value
# for that key if it exists. You can also specifiy an option for return if that key
# is not present.

name_and_age.fetch("Steve") # should return 31



# to_a - the to_a mehtod returns an array version of your hash when called.

array2 = name_and_age.to_a 

# keys and values - if you want to retrieve all of the keys or values out of a hash,
# simply use the .keys or .values option

name_and_age.keys
name_and_age.values
name_and_age.keys.each { |k| puts k }




















































