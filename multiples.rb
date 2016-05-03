def find_and_sum_multiples(num)
  find_multiples(num).inject(&:+)
end

def multiple_of_3_or_5(possible)
  return possible % 3 == 0 || possible % 5 == 0
end

def find_multiples(num)
  (1...num).select { |x| multiple_of_3_or_5(x) }
end
