class FundingRound
  attr_accessor :type, :startup, :venture_capitalist, :investment
  @@all = []

  def initialize(type, startup, venture_capitalist, investment)
    @type = type
    @startup = startup
    @venture_capitalist = venture_capitalist
    @investment = investment

    @@all << self
  end

  def type
    @type
  end

  def investment
    if @investment >= 0
      @investment.to_f
    end
  end

  def startup
      @startup
  end

  def venture_capitalist
      @venture_capitalist
  end

  ### Class Methods
  def self.all
    @@all
  end

end ### End of FundingRound Class

#### Build out the following methods on the `FundingRound` class

# # DONE - `FundingRound#type`
#   - returns the type of funding round
#   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
#
# - DONE - `FundingRound#investment`
#   - returns the amount invested during this funding round. This should be a float that is not be a negative number.

# - DONE `FundingRound.all`
#   - returns all of the funding rounds
#
# - DONE`FundingRound#startup`
#   - returns the startup object for that given funding round
#   - Once a funding round is created, I should not be able to change the startup
#
# - DONE `FundingRound#venture_capitalist`
#   - returns the venture capitalist object for that given funding round
#   - Once a funding round is created, I should not be able to change the venture capitalist
#
