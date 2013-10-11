def sum(input)
  if input.length == 0
    return 0
  end
  sum = 0
  input.each do |thing|
    sum += thing
  end
  return sum
end

def max_2_sum(input)
  if input.length == 0
    return 0
  end
  max1 = 0
  max2 = 0
  input.each do |thing|
    if thing > max1
      max2 = max1
      max1 = thing
    elsif thing > max2
      max2 = thing
    end
  end
  return max1 + max2
end

def sum_to_n?(input, n)
  if input.length == 0
    return n == 0
  end
  for i in 0..(input.length-1)
    for j in i..(input.length-1)
      if (i != j)
        if (input[i] + input[j]) == n
          return true
        end
      end
    end
  end
  return false
end