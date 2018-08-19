class Guest


attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end


def self.all
  @@all
end


#returns an array of all listings a guest has stayed at WHICH
#MUST CONNECT THRU TRIPS
def listings
  self.trips.map do |trip|
    trip.listing
  end
end

#U GOTTA DO THIS FIRST TO GET LISTINGS
def trips
  Trip.all.select do |trip|
    trip.guest == self
  end
end

  #THE NUMBER OF TRIPS DUH
def trip_count
  self.trips.count
end


#THIS FOR IF THEY DID MORE THAN ONE TRIP
def self.pro_traveller
  self.all.select do |traveller|
    traveller.trip_count > 1
  end
end

#takes an argument of a name (as a string),
# returns the all guests with that name
def self.find_all_by_name(name)
  self.all.find do |guest|
    guest.name == name
  end
end

end
