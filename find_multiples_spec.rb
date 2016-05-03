require_relative 'find_multiples'

describe 'find_multiples' do

  it 'finds and sums the multiples of 3 and 5 in integers up to the input' do
    expect(find_multiples(10)).to eq 23
  end

end
