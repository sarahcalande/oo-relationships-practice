class Ride

attr_accessor :passenger, :driver, :distance

@@all = []


def initialize(passenger, driver, distance)
  @distance = distance
  @passenger = passenger
  @driver = driver
  @@all << self
end

def self.all
  @@all
end

def self.average_distance #AVG DISTANCE OF ALL RIDES
  sum = 0
  self.all.each do |x|
  sum +=  x.distance.count
  sum/self.all.count
  end
end



end
