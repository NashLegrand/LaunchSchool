# passing_block.rb

=begin
def take_block(&block) # the & tells us the argument is a block
  block.call
end

take_block do 
  puts "Block being called in the method!"
end
=end


# Say we wanted to pass an argument to the method as well. In the method below, we are passing
# the mubmer into the take_block method and using it in our block call.

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end
