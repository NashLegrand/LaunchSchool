# proc_example.rb

talk = Proc.new do 
  puts "I am talking."
end

talk.call

# Procs can also take arguments if specified.

talk = Proc.new do |name| 
  puts "I am talking to #{name}"
end

talk.call("Bob")

# Procs can be passed into methods as well. Let's take the passing_block.rb code and modify the 
# method to take a proc instead. See passing_proc.rb file in this folder.