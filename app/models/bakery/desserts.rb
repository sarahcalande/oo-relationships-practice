class Desserts


attr_accessor :name, :bakery


@@all = []

def initialize(name, bakery)
  @bakery = bakery
  @name = name
  @@all << self
end

def self.all
  @@all
end




#ARRAY OF INGREDIENTS, WHICH U CAN DO CUS THEY BELONG TO DESSERT
def ingredients
  Ingredients.all.select do |ingredient|
    ingredient.dessert == self
  end
end


#U CAN DO THIS BC CALORIES BELONGS TO INGREDIENTS
def caloriesarray
    self.ingredients.map do |ingredient|
      ingredient.calories
  end
end

#THEN U USE THAT METHOD TO FIND THE TOTAL CALS IN THE DESSERT
def calories
  sum = 0
  caloriesarray.each do |calorie|
    sum += calorie
  end
end


end
