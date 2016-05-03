def sum_of_multiples(num)
  num -= 1
  array_three = (1..num).find_all { |i| i % 3 == 0 }
  array_five = (1..num).find_all { |i| i % 5 == 0 }
  sum = 0
  array_three.each { |a|  sum += a}
  array_five.each { |b|  sum += b}
  sum
end

# puts sum_of_multiples(20)
