def multiples(max)
  (0..max-1).select{ |x| x % 3 == 0 || x % 5 == 0}.reduce(:+)
end


describe 'multiples method' do
  
  it 'works for below 10' do
    puts "multiples(10) is #{multiples(10)}"

    expect(multiples(10)).to eq(23)
  end
  
end