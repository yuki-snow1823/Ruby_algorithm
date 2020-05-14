ef divide(num)
    result = []
    i = 1
  while i <= num do
    if num % i == 0
        result << i
    end 
    i += 1
    end
    return result
end
