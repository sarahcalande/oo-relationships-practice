class Bakery


attr_accessor :name


@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

#DESSERTS THAT BAKERY MAKES, WHICH U CAN FIND BC Desserts
#BELONGS TO BAKERY BOIIIII
def desserts
  Desserts.all.select do |dessert|
    dessert.bakery == self
  end
end

#ARRAY OF INGREDIENTS BUT U GOTTA GO THRU DESSERTS FIRST
def ingredients
  self.desserts.map do |dessert|
    dessert.ingredients
  end
end

#INGREDIENTS HAVE CALORIES SO ONCE U HAVE THAT UNLOCKED
#U CAN GET ALL THE CALORIES IN A BAKERY
def calories
  self.ingredients.map do |ingredient|
    ingredient.calories
  end
end

#THEN HOPEFULLY U CAN USE THAT TO FIND AVG CALS
def average_calories
  self.calories/self.desserts
end

#THIS SHOULD BE THE INGREDIENTS ARRAY TO STRING
def shopping_list
  self.ingredients.to_s
end


end
