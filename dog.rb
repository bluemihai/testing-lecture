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

  it 'should retun an name' do
    expect(harry.adopt!("peter")).to eq 'peter'
  end

  it 'should spayed_or_neutered' do

    expect(harry.adopt!('harry')).to eq 'harry'
    puts harry.adopt!(@owner_name)
  end


end
