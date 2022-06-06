class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all 
  end 

  def cars 
    Car.all.filter { |cars| cars.mechanic == self }
  end 

  def car_owners 
    cars.collect { |cars| cars.owner }
  end 

  def car_owners_names
    car_owners.select { |owner| owner.name }
  end 
end
