class Dog
  attr_accessor :age, :breed, :name, :gender, :in_shelter, :cost_to_adopt, :owner,
    :spayed_or_neutered

  def initialize(args={})
    @age = args[:age] || 0
    @breed = args[:breed] || 'mutt'
    @name = args[:name] || 'John Dog'
    @gender = args[:gender]
    @cost_to_adopt = args[:cost_to_adopt] || 100
    @owner = args[:owner]
    @spayed_or_neutered = args[:spayed_or_neutered]
  end

  def bark
    ['Woof!', 'Bow-wow!'].sample
  end

  def adopt!(owner_name)
    raise unless owner_name.to_s.length > 0
    @owner = owner_name
    spay_or_neuter
    @cost_to_adopt = nil
  end

  def in_shelter?
    @owner.nil?
  end

  def spayed_or_neutered?
    @spayed_or_neutered
  end

  private
  
  def spay_or_neuter
    @spayed_or_neutered = true
  end

end