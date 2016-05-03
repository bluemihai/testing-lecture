require_relative '../multiples.rb'

describe "multiples" do
  describe "find_multiples" do
    it "should return the multiples of 3 and 5 under 10" do
      expect(find_multiples(10)).to eq [3, 5, 6,  9]
    end
  end

  describe "find_and_sum_multiples" do
    it "should find and sum the multiples of 3 and 5 under 1000" do
      expect(find_and_sum_multiples(10)).to eq 23
      expect(find_and_sum_multiples(1000)).to eq 233168
    end
  end
end