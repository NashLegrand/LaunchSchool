

# 1. Given a hash of family members, with keys as the title and an array
# of names as the values, use Ruby's built in select method to gather
# only immediate family member's names into a new array.

# Note for the first exercise. I got stuck here because i ran through the material
# once and then worked the exercises. I should practice the material as i progress
# the book and then work the exercises. I had to look at the solution.

family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "susan"]
}

immediate_family = family.select do |k, v| # use the select method to grab immediate family
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten # .values pulls the values only and flatten transforms into single array


# 2. Look at Ruby's merge method. Notice that it has two versions. What is the 
# difference between merge and merge!. Write a program that uses both and illustrate
# the differences.

# merge - returns a new hash that merges two hashes together but leaves the original
# hash intact.

infield_team = {
  infield: ["Pitcher", "Catcher", "First Base", "Second Base", "Short Stop", "Third Base"]
}

outfield_team = {
  outfield: ["Left Field", "Center Field", "Right Field"]
}

team = infield_team.merge(outfield_team)
puts team
puts # use a puts to insert a clean line for viewability


# Using the merge! method will permanently mutate the object/hash in which is called.
infield_team.merge!(outfield_team)
puts 
puts infield_team
puts


# 3. Using some of Ruby's built in Hash methods, write a program that loops through
# a hash and prints all of the keys. Then write a program that does the same thing
# except printing the values. Finally, write a program that prints both.

# It looks like I used different methods from the solution to accomplish this task,
# but I feel that my code was just as efficient and clean as the solution. I guess 
# that's the upside to using Ruby...
vehicles = {
  suv: "4Runner",
  compact_car: "Corolla",
  mid_size: "Camry",
  full_size_truck: "Tundra",
  small_truck: "Tacoma"
}

vehicles.keys.each { |k| puts k } # loops through and puts the keys
puts # use a puts to insert a clean line for viewability
vehicles.values.each { |v| puts v } # loops through and puts the values
puts 
vehicles.each_pair { |key, value| puts "Toyota's #{key} is the #{value}." }


# 4. Given the following expression, how would you access the name of the person?

person = {name: "Bob", occupation: "web developer", hobbies: "painting" }

puts person[:name] 

# 5. What method could you use to find out if a Hash contains a specific value in it?
# Write a program to demonstrate this use.

# You can use the .has_value?() method to check this. See below.
puts person.has_value?("Bob")
puts person.has_value?("painting")

# 6. Given the array below. Write a program that prints out groups of words that are
# anagrams. Anagrams are words that have the same exact letters in them but in a different
# order. Your output should look something like the example below.

# ["demo", "dome", "mode"]
# ["neon", "none"]

words = ["demo", "none", "tied", "evil", "dome", "mode", "live",
"fowl", "veil", "wolf", "diet", "vile", "edit", "tide", "flow", "neon"]

# I found the code below on StackOverFlow. It did the job, but now I need to understand it.
# https://stackoverflow.com/questions/9646995/ruby-way-to-group-anagrams-in-string-array?noredirect=1&lq=1
anagram_list = words.group_by { |element| element.chars.sort }.values

# The book solution is below. Still don't firmly grasp it. Need to review.

result = {} # create an empty hash to store the result

words.each do |word|
  key = word.split('').sort.join # Create the key to loop through the words. 
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end    
end

result.each_value do |v|
  p v
end

# 7. Given the following code, what's the difference between the two hashes that
# were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# The only difference appears to be that manner in which the hash was created, but once
# I plugged this into IRB, my_hash used x as the key, but my_hash2 assigned the variable 
# x as the key.

# 8. 












































