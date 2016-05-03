def find_and_sum_multiples(num)
  sum_multiples(find_multiples(num))
end

private

def multiple_of_3_or_5(possible)
  return possible % 3 == 0 || possible % 5 == 0
end

def find_multiples(num)
  results = []
  (1...num).each do |possible_multiple|
    results << possible_multiple if multiple_of_3_or_5(possible_multiple)
  end
  results
end

def sum_multiples(multiples_array)
  multiples_array.inject(&:+)
end
