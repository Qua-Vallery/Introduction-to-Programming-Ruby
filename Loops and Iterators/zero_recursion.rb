def zero_recursion(start)
  puts start
  if start > 0
    zero_recursion(start - 1)
  end 
end  

zero_recursion(22)