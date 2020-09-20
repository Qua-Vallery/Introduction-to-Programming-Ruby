#write a program that asks the user to type in their name and then prints out a greeting message with their name included.
puts "What is your first name?"
name = gets.chomp
print "Nice to meet you, " + name + "!\n"

#add another section that prints the name of the user 10 times.
10.times {puts name}

#modify the first program so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name.
#Then, outputs their full name at once.
puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

full_name = puts first_name + " " + last_name
