
class FundingRound

  @@all = []
  attr_reader :startup, :venture_capitalist, :type, :investment

  def initialize(startup,vc,type,investment)
    @startup = startup
    @venture_capitalist = vc
    @investment = investment
    @@all << self
  end

  def self.all
    @@all
  end

  def investment=(value)

    if(@investment + value < 0)
      @investment = 0
    else
      @investment += value
      @investment.to_f
    end

  end

end
