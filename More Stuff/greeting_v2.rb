def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)

# proper execution flow
=begin
main -> decorate_greeting -> greet -> space_out_letters (passes result back) -> greet -. decorate_greeting -> main
=end

# error explained
=begin
Because the function split expects a string, we get an error, along with a trace of the calls that lead up to that error.
=end