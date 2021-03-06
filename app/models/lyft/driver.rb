class Driver

attr_accessor :name

@@all = []


def initialize(name)
  @name = name
  @@all << self
end


def self.all
  @@all
end

def rides ##ALL RIDES A DRIVER HAS DONE
  Ride.all.select do |ride|
    ride.driver == self
  end
end

def passengers ##ITERATE THRU RIDES METHOD BC THATS HOW THEY CONNECTED
  self.rides.map do |ride|
    ride.passenger
  end
end

def ridedistance #SAME AS IN DRIVER, ITERATES THRU METHOD
  # FIRST CUS DISTANCE IS AN ATTRIBUTE BELONGING TO RIDE
  self.rides.map do |ride|
    ride.distance
  end
end

def total_distance #NOW USE THAT OTHER METHOD TO CALCULATE THE
  # TOTAL THE DRIVER TRAVELED
  sum = 0
  ridedistance.each do |distance|
    sum += distance
  end
    sum
end


##QUESTIONABLE
#takes an argument of a distance (float) and
# returns all drivers who have exceeded that mileage
def self.mileage_cap(distance)
  self.all.select do |driver|
    driver.total_distance > distance
  end
end



end
