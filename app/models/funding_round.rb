class FundingRound

  attr_reader :type, :startup, :venture_capitalist

  @@all = []

  def initialize(type, startup, name)
    @name = type
    @startup = startup
    @venture_capitalist = venture_capitalist
    @@all << self

  end

  def self.all
    @@all

  end

end
