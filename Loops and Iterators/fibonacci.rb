# fibonacci.rb

=begin
fibonacci is a sequence of numbers in which each number is the sum of the previous two numbers in the sequence.
=end

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end 
end

puts fibonacci(6)