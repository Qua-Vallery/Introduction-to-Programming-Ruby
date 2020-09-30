words = ['demo',
  'none',
  'tied',
  'evil',
  'dome',
  'mode',
  'live',
  'fowl',
  'veil',
  'wolf',
  'diet',
  'vile',
  'edit',
  'tide',
  'flow',
  'neon']
  
result = {}

words.each do |word|
  key = word.split('').sort.join
  puts key
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
  puts result
end

result.each_value do |v|
  puts "------"
  p v
end  
