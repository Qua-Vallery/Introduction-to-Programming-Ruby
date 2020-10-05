# exception_example.rb

begin
  # perform some dangerous operation
rescue
  # do this is operation fails
  # for example, log the error
end


#one common occurrence is when a nil value makes its way into our program

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end