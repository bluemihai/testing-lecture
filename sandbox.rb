def reverse_string(str)
  str.reverse
end

def raise_an_error
  raise
end

describe 'reverse_string' do
  # let(:example_string) { 'hello' }

  it 'works' do
    example_string = 'hello' # same thing as let
    expect(reverse_string(example_string)).to eq 'olleh'
  end

  it 'raises an error with block/curly braces' do
    expect{ raise_an_error }.to raise_error(RuntimeError)
    # Uncomment the next line to see it fail!
    #expect(raise_an_error).to raise_error(RuntimeError)
  end

end