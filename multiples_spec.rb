require_relative 'multiples'

describe 'finding sum of all multiples of 3 or 5 below 1000' do
  it 'sums all multiples of 3 or 5' do
    expect(sum_of_multiples(10)).to eq 23
  end
end
