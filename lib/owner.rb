class Owner
  attr_reader :species, :pets
  attr_accessor :name
  @@all=[]
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.size
  end 
  
  def self.reset_all
    @@all.clear
  end
  
  def initialize(species)
    @species=species
    @pets={fishes:[], cats:[], dogs:[]}
    @@all << self 
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    pet=Fish.new(name)
    @pets[:fishes] << pet
  end
  
  def buy_cat(name)
    pet=Cat.new(name)
    @pets[:cats] << pet
  end
  
  def buy_dog(name)
    pet=Dog.new(name)
    @pets[:dogs] << pet
  end
  
  def walk_dogs
    @pets[:dogs].each{|pet| pet.mood="happy"}
  end
  
  def feed_fish
    @pets[:fishes].each{|pet| pet.mood="happy"}
  end
  
  def play_with_cats
    @pets[:cats].each{|pet| pet.mood="happy"}
  end
  
  def sell_pets
    @pets.each{|species|
      species.each{|pet|
        pet.mood="nervous"
      }
    }
  end

end