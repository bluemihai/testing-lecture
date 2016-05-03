require_relative '../dog.rb'

describe Dog do
  let(:spot) {Dog.new(5, "Husky", "Spot", "Male", true, 405, "")}

  it '#init age' do
    expect(spot.age).to eq 5
  end

  it '#init breed' do
    expect(spot.breed).to eq "Husky"
  end

  it '#init name' do
    expect(spot.name).to eq "Spot"
  end

  it '#init gender' do
    expect(spot.gender).to eq "Male"
  end

  it '#init spayed_or_neutered' do
    expect(spot.spayed_or_neutered).to eq true
  end

  it '#init cost_to_adopt' do
    expect(spot.cost_to_adopt).to eq 405
  end

  it '#init owner_name' do
    expect(spot.owner_name).to eq ""
  end

  it "tells if dog is in shelter" do
    expect(spot.in_shelter?).to eq true
  end
end
