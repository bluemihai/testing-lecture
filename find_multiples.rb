def find_multiples(input)
  sum = 0
  for i in 1...input
    if i%3 == 0 || i%5 == 0
    sum += i
    end

  end
  sum
end


