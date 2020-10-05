# lab_check.rb

words = ['laboratory', 'experiment', 'Pans Labryinth', 'elaborate', 'polar bear']

for element in words
  element = element.downcase
  if element.include?("lab")
    puts element
  else
    next
  end
end