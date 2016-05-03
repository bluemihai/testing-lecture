def reverse_string(str)
  str.reverse
end

describe 'reverse_string' do
  let(:example_string) { 'hello' }

  it 'works' do
    puts "example_string is #{example_string}"
    expect(reverse_string(example_string)).to eq 'olleh'
  end
end