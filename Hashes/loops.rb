kids = {Quashaun: 29, 
        Ronisha: 27, 
        Robert: 23, 
        Jarya: 22, 
        Imani: 18,
        Ayante: 16}
        

kids.select { |key, value| puts "#{key} "}

kids.select { |key, value| puts "#{value} "}

kids.select {|key, value| puts "#{key} #{value} "}

if kids.has_value?(29)
  puts "It's here!!!"
else
  puts "Not here!"
end
