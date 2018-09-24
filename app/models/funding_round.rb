class FundingRound

  attr_accessor :type, :investment
  attr_reader :startup, :vc

  @@all = []

  def self.all
    @@all
  end

  def initialize(startup, vc, type, investment)
    @startup = startup
    @vc = vc
    @type = type
    @investment = investment

    @@all << self
  end

end
