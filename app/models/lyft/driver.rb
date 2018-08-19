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

def ridedistance ##DISTANCE IS AN ATTR OF RIDE SO ITERATE THAT METHOD
  self.rides.map do |ride|
    ride.distance
  end
end


##QUESTIONABLE
#takes an argument of a distance (float) and
# returns all drivers who have exceeded that mileage
def self.mileage_cap(distance)
  self.all.map do |driver|
    driver.ridedistance > distance
  end
end



end
