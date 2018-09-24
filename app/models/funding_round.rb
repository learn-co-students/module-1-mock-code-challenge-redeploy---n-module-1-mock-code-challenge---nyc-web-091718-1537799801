class FundingRound

  attr_accessor :startup, :type, :investment
  attr_reader :vc

  @@all = []

  def self.all
    @@all
  end

  def initialize(startup, vc, type, investment)
    @startup = startup
    @argument = argument
    @argument = argument
    @investment = investment.to_f && investment > 0
    self.class.all << self
  end


end



#ruby tools/console.rb
