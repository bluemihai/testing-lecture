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

  def in_shelter?
    if @owner_name == ""
      return true
    else
      return false
    end
  end

  def bark
    return "woof"
  end

  def adopt!(owner_name)
    @owner_name = owner_name
    @spayed_or_neutered = true
    @cost_to_adopt = nil
  end
end
