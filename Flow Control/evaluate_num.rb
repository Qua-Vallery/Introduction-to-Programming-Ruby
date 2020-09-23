puts "Please enter a number between 0 and 100."

number = gets.chomp.to_i

def between_0_and_100 (number)
  if number > 0 && number <= 50
    puts "#{number} is between 0 and 50."
  elsif number > 50 && number <= 100
    puts "#{number}number is between 51 and 100."
  elsif number > 100
    puts "This #{number} is greater than 100."
  else
    "#{number} is an invalid number. Please enter a number between 0 and 100."
  end
end

puts between_0_and_100(number)