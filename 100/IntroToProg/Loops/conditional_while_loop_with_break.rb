# conditional_while_loop_with_break.rb

x = 0

while x <= 10
  if x == 7
    break # Loops until x == 7. Then breaks the loop and no longer executes.
  elsif x.odd?
    puts x
  end
  x += 1
end