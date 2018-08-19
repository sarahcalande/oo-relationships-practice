class Trip


attr_accessor :listing, :guest
#this is the CONNECTING CLASS


@@all = []


def initialize(listing, guest)
  @listing = listing
  @guest = guest
 @@all << self
end


def self.all
  @@all
end


end
