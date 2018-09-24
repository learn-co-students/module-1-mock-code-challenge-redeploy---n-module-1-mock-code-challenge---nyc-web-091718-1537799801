class FundingRound

  attr_accessor :venture_capitalist, :type, :investment
  attr_reader :startup

  @@all = []

  def initialize(venture_capitalist, type, investment)
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = investment
    @@all << self
  end

  def venture_capitalist
  end


end
