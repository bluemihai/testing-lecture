require_relative 'multiples.rb'

describe "multiples" do
  # describe "find_multiples" do
  #   it "should retrun the multiples of 3 and 5 under 10" do
  #     expect(find_multiples(10)).to eq [3, 5, 6,  9]
  #   end
  # end
  #
  # describe "sum_multiples" do
  #   it "should find the sum of all multiples of 3 or 5 under 10" do
  #     under_ten_multiples = find_multiples(10)
  #     expect(sum_multiples(under_ten_multiples)).to eq 23
  #   end
  #   it "should find the sum of all multiples of 3 or 5 under 1000" do
  #     under_one_thousand_multiples = find_multiples(1000)
  #     expect(sum_multiples(under_one_thousand_multiples)).to eq 233168
  #   end
  # end
  # Mihai said don't test private methods...so I moved all of these into private methods...byebye tests.

  describe "find_and_sum_multiples" do
    it "should find and sum the multiples of 3 and 5 under 1000" do
      expect(find_and_sum_multiples(1000)).to eq 233168
    end
  end
end
