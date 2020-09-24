# stop_loop.rb

x = ""

while x != "STOP" do
  puts "Hi, How are you feeling?"
  answ = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
