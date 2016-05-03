require_relative 'dog'

describe 'dog' do


  context 'in_shelter?' do
    it 'determines whether dog has owner or is in shelter' do
      dog = Dog.new(1, "Poodle", "Max", "M", true, 200, "Kevin")
      expect(dog.in_shelter?).to be false
    end
  end

  context 'bark' do
    it 'barks' do
      dog = Dog.new(1, "Poodle", "Max", "M", true, 200, "Kevin")
      expect(dog.bark).to eq "Bark!"
    end
  end

  context 'adopt!' do
    it 'adopts the dog' do
      dog = Dog.new(1, "Poodle", "Max", "M", true, 200, "Kevin")
      expect(dog.owner_name).to eq "Kevin"
      expect(dog.spayed_or_neutered).to be true
      expect(dog.cost_to_adopt).to eq 200

      dog.adopt!("Bruce")

      expect(dog.owner_name).to eq "Bruce"
      expect(dog.spayed_or_neutered).to be true
      expect(dog.cost_to_adopt).to eq nil
    end
  end

  context 'adopt!' do
    it 'throws an error without an owner_name' do
      dog = Dog.new(1, "Poodle", "Max", "M", true, 200, "Kevin")
      expect{ dog.adopt!("") }.to raise_error

    end
  end

end
