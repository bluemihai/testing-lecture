class Dog

  def initialize(age, breed, name, gender, spayed_or_neutered, cost_to_adopt, owner_name)
    @age = age
    @breed = breed
    @name = name
    @gender = gender
    @spayed_or_neutered = spayed_or_neutered
    @cost_to_adopt = cost_to_adopt
    @owner_name = owner_name
  end

  def age
    @age
  end

  def owner_name
    @owner_name
  end

  def spayed_or_neutered
    @spayed_or_neutered
  end

  def cost_to_adopt
    @cost_to_adopt
  end

  def in_shelter?
    true
  end

  def bark
    "bow wow"
  end

  def adopt!(owner_name)
    if owner_name.nil?
      "need an owner"
    else
      return @owner_name = owner_name
      return @spayed_or_neutered = true
      return @cost_to_adopt = nil
    end
  end




end
# harry = Dog.new(2,"pit","harry",'male', false, 20)

describe 'Dog' do
  let(:harry) {Dog.new(5, "pit", "harry", "M", false, 20, "kennel")}

  it 'initialize an instance' do
    harry.should be_an_instance_of Dog
  end

  it 'should have an age' do
     expect(harry.age).to eq 5
  end

  it 'should bark' do
    expect(harry.bark).to eq "bow wow"
  end

  it 'should be true' do
    expect(harry.in_shelter?).to eq true
  end

  # it 'should return error is name is nil' do
  #   expect(harry.adopt!(nil)).to eq "need an owner"
  # end

  it 'should return adoption' do
    expect(harry.owner_name).to eq 'kennel'
    expect(harry.spayed_or_neutered).to eq false
    expect(harry.cost_to_adopt).to eq 20

    harry.adopt!('peter')

    expect(harry.owner_name).to eq 'peter'
    expect(harry.spayed_or_neutered).to eq true
    expect(harry.cost_to_adopt).to eq nil

  end



end
