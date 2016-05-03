require_relative '../dog'

describe "Dog" do
  describe "Dog attributes" do
    let(:dog) {Dog.new(Hash.new)}
    it "should have the following attributes" do
      expect(dog).to respond_to(:age)
      expect(dog).to respond_to(:breed)
      expect(dog).to respond_to(:name)
      expect(dog).to respond_to(:gender)
      expect(dog).to respond_to(:spayed_or_neutered)
      expect(dog).to respond_to(:cost_to_adopt)
      expect(dog).to respond_to(:owner_name)
    end
  end

  describe "Dog methods" do
    let(:dog) {Dog.new(Hash.new)}
    describe "#in_shelter?" do
      it "should know if it is in a shelter or not" do
        expect(dog).to respond_to(:in_shelter?)
      end
    end

    describe "#bark" do
      it "should be able to bark" do
        dog.stub(:bark).and_return("woof!","arf!","aroo!")
        # expect(dog).to respond_to(:bark)
        # expect(dog.bark).to eq("woof!")
      end
    end

    describe "#adopt!" do
      it "should be adoptable" do
        expect(dog).to respond_to(:adopt!)
        expect{dog.adopt!("James")}.to change(dog, :owner_name).to("James")
      end
      it "should change spayed_or_neutered to true" do
        expect(dog).to respond_to(:adopt!)
        expect{dog.adopt!("James")}.to change(dog, :spayed_or_neutered).to(true)
      end
      it "should change cost_to_adopt to nil" do
        expect(dog).to respond_to(:adopt!)
        expect{dog.adopt!("James")}.to change(dog, :cost_to_adopt).to(nil)
      end
      it "should raise an error if no owner provided" do
        expect{dog.adopt!("")}.to raise_error(RuntimeError)
      end
    end
  end
end
