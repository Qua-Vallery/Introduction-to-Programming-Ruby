puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

def say(words="hello")
    puts words + "."
end

say()
say("hi")
say("how are you")
say("I'm fine")

=begin
When we call say("hello"), we pass in the string "hello" as the argument in place for the words parameter. Then, the code within the method definition
is executed within the words local variable evaluated to "hello".
=end

=begin
One of the benefits that methods give us is the ability to make changes in one place that affect many places in our program.
=end

=begin

Make sure you don't mix up method invocation with a block and method definition when you're working with local variable scope issues. They may look
similar at first, but they are not the same. They have different behaviors when it comes to local variable scope.

# Method invocation with a block

[1, 2, 3].each do |num|
  puts num
end

# Method definition

def print_num(num)
  puts num
end

=end
