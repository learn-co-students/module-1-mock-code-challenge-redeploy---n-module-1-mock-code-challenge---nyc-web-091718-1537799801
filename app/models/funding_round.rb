class FundingRound
  attr_accessor :type, :investment
  attr_reader :startup, :venture_capitalist
  @@all = []

  def self.all
    @@all
  end

  def initialize(type, startup, venture_capitalist, investment = 1.0)
    @type = type
    @startup = startup
    @venture_capitalist = venture_capitalist
    if investment >= 0.0
        @investment = investment.to_f
      else
        @investment = 1.0
    end
    self.class.all << self
  end #end initialize

end
