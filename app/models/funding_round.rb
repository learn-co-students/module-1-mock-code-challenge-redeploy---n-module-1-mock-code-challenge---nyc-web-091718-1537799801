class FundingRound
  attr_accessor :type, :startup, :venture_capitalist, :investment
  @@all = []

  def initialize(type, startup, venture_capitalist, investment = 0)
    @type = type
    @startup = startup
    @venture_capitalist = venture_capitalist
    @investment = investment.to_f

    @@all << self
  end


  ### Class Methods
  def self.all
    @@all
  end

end ### End of FundingRound Class
