class Dog

  attr_reader :owner_name, :spayed_or_neutered, :cost_to_adopt

  def initialize(age, breed, name, gender, spayed_or_neutered, cost_to_adopt, owner_name)
    @age = age
    @breed = breed
    @name = name
    @gender = gender
    @spayed_or_neutered = spayed_or_neutered
    @cost_to_adopt = cost_to_adopt
    @owner_name = owner_name
  end

  def in_shelter?
    if @owner_name == "" || @owner_name == nil
      true
    else
      false
    end
  end

  def bark
    "Bark!"
  end

  def adopt!(owner_name)
    if owner_name == "" || owner_name == nil
      raise
    else
      @owner_name = owner_name
      @spayed_or_neutered = true
      @cost_to_adopt = nil
    end
  end

end


# test init
# actually raise error in line 29?
