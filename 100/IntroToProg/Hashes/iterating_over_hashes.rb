# iterating_over_hashes.rb

person = {name: "bob", height: "6 ft", weight: "160 lbs", hair: "brown"}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# You can use a hash to accept optional parameters when you are creating methods. This can
# be helpful when you want to give your methods some more flexibility and expressivity.
# More options if you will. Example below:

def greeting(name, options = {})
  if options.empty? # use the empty? method to detect if options prameter had anything
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]} years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 42, city: "New York City"})

# You can pass in arguments to the greeting method like this
greeting("Bob", age: 62, city: "New York City")

