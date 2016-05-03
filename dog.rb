class Dog
  attr_reader :age, :breed, :name, :gender, :spayed_or_neutered, :cost_to_adopt, :owner_name

  def initialize(args)
    @age = args.fetch(:age, 1)
    @breed = args.fetch(:breed, "Beagle")
    @name = args.fetch(:name, "Toby")
    @gender = args.fetch(:gender, 1)
    @spayed_or_neutered = args.fetch(:spayed_or_neutered, false)
    @cost_to_adopt = args.fetch(:cost_to_adopt, 100)
    @owner_name = args.fetch(:owner_name, "Paris")
    @in_shelter = false
  end

  def in_shelter?
    @in_shelter
  end

  def bark
    return ["woof!", "arf!", "aroo!"].sample
  end

  def adopt!(new_owner)
    raise "No Owner Provided" if new_owner == ""
    @owner_name = new_owner
    @spayed_or_neutered = true
    @cost_to_adopt = nil
  end
end
