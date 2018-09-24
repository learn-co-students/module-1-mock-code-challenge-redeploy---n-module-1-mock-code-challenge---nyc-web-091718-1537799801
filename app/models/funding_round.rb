class FundingRound
  @@all = []
  attr_accessor :type, :investment
  attr_reader :startup, :venture_capitalist

  def self.all
    @@all
  end

  def initialize(startup, vc, type, investment)
    @startup = startup
    @venture_capitalist = vc
    @type = type
    @investment = investment
    @@all << self
  end

end
