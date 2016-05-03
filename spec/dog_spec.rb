require_relative '../dog'

describe Dog do
  let(:new_dog) { Dog.new }
  let(:old_dog) { Dog.new({
    age: 5,
    gender: 'M',
    name: 'Fido',
    breed: 'Terrier',
    cost_to_adopt: 300,
    
  }) }

  context '#initialize' do
    it 'sets correct default attributes for new Dog' do
      expect(new_dog.age).to eq 0
      expect(new_dog.name).to eq 'John Dog'
      expect(new_dog.breed).to eq 'mutt'
      expect(new_dog.cost_to_adopt).to eq 100
      expect(new_dog).to be_in_shelter
    end

    it 'sets given for old Dog' do
      expect(old_dog.age).to eq 5
      expect(old_dog.gender).to eq 'M'
      expect(old_dog.name).to eq 'Fido'
      expect(old_dog.breed).to eq 'Terrier'
      expect(old_dog.cost_to_adopt).to eq 300
      expect(old_dog).to be_in_shelter
    end
  end

  # non-destructive method
  it '#bark returns a bark-like sound' do
    bark_results =  30.times.map { new_dog.bark }
    expect(bark_results.uniq).to match_array ['Woof!', 'Bow-wow!']
  end

  context '#adopt!' do
    it 'sets the owner name' do
      expect(old_dog.owner).to be_nil
      old_dog.adopt!('Sam')
      expect(old_dog.owner).to eq 'Sam'
    end

    it 'sets spayed_or_neutered' do
      expect(old_dog.spayed_or_neutered).to be_falsey
      old_dog.adopt!('Sam')
      expect(old_dog).to be_spayed_or_neutered
    end

    it 'sets cost_to_adopt to nil' do
      expect(old_dog.cost_to_adopt).to be_an Integer
      expect(old_dog.cost_to_adopt).to be > 0
      old_dog.adopt!('Sam')
      expect(old_dog.cost_to_adopt).to be_nil
    end

    it 'raises an error if owner name empty or string' do
      expect{ old_dog.adopt! }.to raise_error(ArgumentError)
      expect{ old_dog.adopt!('') }.to raise_error(RuntimeError)
    end
  end
end