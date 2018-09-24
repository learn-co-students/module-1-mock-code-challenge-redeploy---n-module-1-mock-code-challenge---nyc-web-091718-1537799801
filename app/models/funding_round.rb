class FundingRound
attr_reader :startup, :venture_capitalist
attr_accessor :type

  @@all = []

  def self.all
  @@all
  end

def initialize
  @@all << self
end

def startup
new_start = Startup.new(name) ##instance of Startup for this FundingRound
end


def  venture_capitalist
new_ven_capitalist = VentureCapitalist.new(name)

end

def type(type)
@type = type  #xamples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C..
end

def investment(amount)
  self.amount 
end

end
