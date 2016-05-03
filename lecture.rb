def multiples(max_number)
  sum = []
  range = (0..max_number-1).to_a
  range.each do |x|
    if x%3 == 0
      sum << x
    elsif x%5 == 0
      sum << x
    else
    end
  end
  sum.inject(:+)

end

describe 'multiples' do
  it 'sums the multiples of 3 and 5' do
    expect(multiples(10)).to eq 23
  end
end

describe 'multiples' do
  it 'sums the multiples of 3 and 5' do
    expect(multiples(1000)).to eq 233168
  end
end

