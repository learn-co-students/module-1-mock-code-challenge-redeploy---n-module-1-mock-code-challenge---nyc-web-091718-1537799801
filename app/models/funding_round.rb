require 'pry'
# #### Build out the following methods on the `FundingRound` class
#
# - `FundingRound.all`
#   - returns all of the funding rounds
# - `FundingRound#startup`
#   - returns the startup object for that given funding round
#   - Once a funding round is created, I should not be able to change the startup
# - `FundingRound#venture_capitalist`
#   - returns the venture capitalist object for that given funding round
#   - Once a funding round is created, I should not be able to change the venture capitalist
# - `FundingRound#type`
#   - returns the type of funding round
#   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
# - `FundingRound#investment`
#   - returns the amount invested during this funding round. This should be a float that is not be a negative number.
class FundingRound
  attr_reader :startup, :venture_capitalist
  attr_accessor :type
  @@all = []
  def self.all
    @@all
  end


  def initialize(startup, venture_capitalist, type)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = 0.0
    @@all << self
  end


  def startup
    @startup
  end


  def venture_capitalist
    @venture_capitalist
  end


  def type
    @type
  end

  def accept_investment
    if pledge >0.0
      @investment += pledge
    else
      @investment = @investment 
  end


  def investment
    if @investment >= 0.0
      @investment = @investment
    else
      @investment = 0.0
    end
    @investment
  end
end
