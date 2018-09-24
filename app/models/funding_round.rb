class FundingRound

  attr_accessor = :funding_round
  attr_writer = :startup

  @@all = []

  def self.all
    @@all
  end

  def initialize(funding_round, startup)
    @funding_round = funding_round
    @startup = startup
    @@all << self
  end



end
