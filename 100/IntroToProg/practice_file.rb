

def stray(numbers)
  place_holder = numbers[0]
  numbers.each do |i|
    if i != place_holder
      place_holder = i
      break
    end
  end
  place_holder
end

puts stray([2,1,1,1,1])