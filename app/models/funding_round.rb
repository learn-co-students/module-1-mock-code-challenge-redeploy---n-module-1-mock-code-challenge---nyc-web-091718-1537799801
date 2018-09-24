class FundingRound
 attr_accessor :name, :investment
 attr_reader :startup, :venture_capitalist, :type

 @@all = []

 def self.all
   @@all
 end

 def initialize(startup, venture_capitalist, type, investment)
   if investment < 0
     puts "You cannot invest a negative amount into a startup. Please initialize a new funding round."
     return
   end
   @startup = startup
   @venture_capitalist = venture_capitalist
   @type = type
   @investment = investment.to_f
   @@all << self
 end

end
