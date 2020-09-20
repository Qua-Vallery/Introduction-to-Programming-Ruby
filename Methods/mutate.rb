a = [1, 2, 3]

#example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

=begin
Method definitions cannot modify arguments passed into them permanently, unless we perform some action on the argument that mutates the caller, then
we can permanently alter variables outside the method definition's scope. 

In the example above, we have permanently modified the local variable a by passing it to the mutate method, even though a is outside the method 
definition's scope. This is because the pop method mutates the caller.
=end

a = [1, 2, 3]

#example of method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method #{a}"

=begin
You'll notice in the example above, that we have the same output before and after the mehod invocation, so we know that a was
not modified in any way. This is because the last method does not mutate the caller.

Unfortunately, the only way to know which methods mutate the caller is through memorization.
=end