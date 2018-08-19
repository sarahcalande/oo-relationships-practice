class Passenger

attr_accessor :name

@@all = []


def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def rides #ALL RIDES A PASSENGER BEEN ON
  Ride.all.select do |ride|
    ride.passenger == self
  end
end

def drivers #FIRST MAKE THE RIDES METHOD CUS THATS HOW THEY CONNECTED
  self.rides.map do |ride|
    ride.driver
  end
end

def ridedistance #SAME AS IN DRIVER, ITERATES THRU METHOD
  # FIRST CUS DISTANCE IS AN ATTRIBUTE BELONGING TO RIDE
  self.rides.map do |ride|
    ride.distance
  end
end

def total_distance #NOW USE THAT OTHER METHOD TO CALCULATE THE
  # TOTAL THE PASSENGER TRAVELED
  sum = 0
  ridedistance.each do |distance|
    sum += distance
  end
      sum
end


def self.premium_members #should find all passengers who have
  # travelled over 100 miles with the service
  #NOW USE THAT METHOD TO FIND WHOSE DISTANCE WAS > 100
  self.all.select do |passengers|
    passengers.total_distance > 100
  end
end



end
