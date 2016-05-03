class Dog
  attr_accessor :age, :breed, :name, :gender, :spayed_or_neutered, :cost_to_adopt, :owner_name
  def initialize(age, breed, name, gender, spayed, cost, owner)
    @age = age
    @breed = breed
    @name = name
    @gender = gender
    @spayed_or_neutered = spayed
    @cost_to_adopt = cost
    @owner_name = owner
  end
end
