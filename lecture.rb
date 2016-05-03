def multiples(argument)
  sum = []
  argument.each do |x|
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
    expect(multiples([1,2,3,4,5,6,7,8,9])).to eq 23
  end
end
