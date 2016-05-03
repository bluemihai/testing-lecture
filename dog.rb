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
end
