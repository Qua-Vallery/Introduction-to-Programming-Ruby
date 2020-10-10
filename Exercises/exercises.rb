# 1
=begin
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


array.each { |number| puts number}

# 2
array.each { |number| 
  if number > 5 
    puts number
  else
    next
  end
}


# 3
new_array = []

array.select { |number|
  if number % 2 != 0
    new_array.push(number)
  else
    next
  end
}

puts new_array


# 4
array.push(11)
array.unshift(0)

puts array

# 5 

array.pop
array << 3
puts array


# 6
array.uniq!
puts array
=end
# 7
=begin
The major difference betwen an array and hash is that a hash has key-value pairs"
=end

# 8
=begin
new_siblings = {Quashaun: 29} #new way
old_siblings = {:Quashaun => 29} #old_way

puts new_siblings
puts old_siblings


# 9
h = {a:1, b:2, c:3, d:4}

puts h[:b]

h[:e] = 5

puts h

h.each { |key,value|
  if value < 3.5
    h.delete(key)
  end
}

puts h

# 10
yes


hash2 = {Quashaun: [29, 'Black', 'Female']}
puts hash2


# 11
# Write a program that copies the information from the array into the empty hash that applies to the correct person.
# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts

# 12

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]


# 13
# Very close I think I need to look up ternary arguments 
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |x| x.start_with?("s") }

print arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |x| x.start_with?("s") or x.start_with?("w")}

print arr


# 14
#turn it a new array that consists of strings containing one word ex. "white snow" => "white", "snow"
# map creates a new array
# flatten returns a nsew array that is one-dimensional 

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |compound_word| compound_word.split(" ")}
a = a.flatten
print a


# 15

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
#These hashes are the same

=end

# 16 

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"]]

contacts = {"Joe Smith" => {}}

=begin
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts
=end 

#shift removes the first element of self and returns it (shifting all other elements down by one)
#first returns the first element or the first n elements of the array.

contact_data.each { |element|
  contacts["Joe Smith"][:email] = element.first
  element.shift
  contacts["Joe Smith"][:phone] = element
  element.shift
  contacts["Joe Smith"][:address] = element
}

print contacts