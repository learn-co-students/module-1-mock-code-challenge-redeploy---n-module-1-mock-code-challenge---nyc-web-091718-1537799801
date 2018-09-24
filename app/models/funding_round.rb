class FundingRound
  attr_accessor :type
  #types include Angel, Pre-Seed, Seed, Series A/B/C, etc
  attr_reader :startup, :investment, :venture_capitalist
  #startup cannot change after FundingRound is created
  #once round is created, VC cannot change
  # end

  @@all = []

  def initialize(type, startup, venture_capitalist, investment)
    @type = type
    @startup = startup
    @venture_capitalist = venture_capitalist
    if investment.to_f > 0
      @investment = investment.to_f
    end
    @@all << self
  end

  def self.all
    #returns all FR instances with FundingRound.all
    @@all
  end

end
