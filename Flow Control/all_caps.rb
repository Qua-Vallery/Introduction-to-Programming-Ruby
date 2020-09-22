puts "Please enter a sentence."

sentence = gets.chomp

def all_caps(sentence)
  if sentence.length >= 10
    sentence.upcase
  else
    puts "This is a short sentence."
  end
end

puts all_caps(sentence)
