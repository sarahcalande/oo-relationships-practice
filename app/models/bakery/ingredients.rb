class Ingredients


attr_accessor :dessert, :name, :calories


@@all = []

def initialize(dessert, name, calories)
  @calories = calories
  @name = name
  @dessert = dessert
  @@all << self
end

##WTF???
def bakery
  self.dessert.bakery
end


def self.all
  @@all
end

#RETURN ARRAY OF ING IF IT INCLUDES THE INGREDIENT STRING ARGUMENT
def self.find_all_by_name(ingredient)
  self.all.select do |ingredients|
    ingredients.name.include?(ingredient)
  end
end
end
