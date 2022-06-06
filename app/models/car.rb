class Car

  attr_reader :make, :model, :classification, :mechanic, :owner

  @@all = []

  def initialize(make, model, classification, mechanic, owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @owner = owner
    @@all << self
  end

  def self.all 
    @@all 
  end 

  def self.classifications
    Car.all.collect { |cars| cars.classification }.uniq
  end 

  def self.find_mechanics(classification)
    Mechanic.all.filter { |mech| mech.specialty == classification}
  end 
end
