# greeting.rb

def greet(person)
  puts "Hello, " + person
end 

greet("John")
greet(1)

# program execution stack or this is the stack trace
=begin
main -> greet -> puts -> exit and return to main
=end
