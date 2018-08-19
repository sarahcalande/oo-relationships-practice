
class Listing


attr_accessor :city

@@all = []

def initialize(city)
  @city = city
  @@all << self
end


def self.all
  @@all
end

#GOTTA DO FIRST CUS THEY CONNECTED THIS WAY
def trips
  Trip.all.select do |trip|
    trip.listing == self
  end
end

#NOW U CAN USE TRIPS METHOD TO FIND GUESTS
def guests
  self.trips.map do |trip|
    trip.guest
  end
end


#NUMBER OF TRIPS TAKEN TO LISTING DUH
def trip_count
  self.trips.count
end

#takes an argument of a city name (as a string)
#and returns all the listings for that city
def self.find_all_by_city(city)
  self.all.select do |listing|
    listing.city == city
  end
end

#finds the listing that has had the most trips
def self.most_popular
  self.all.max_by do |listing|
    listing.trip_count
  end
end

end
