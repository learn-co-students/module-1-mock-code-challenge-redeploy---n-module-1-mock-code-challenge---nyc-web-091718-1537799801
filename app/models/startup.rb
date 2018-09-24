class Startup
  attr_reader :founder, :domain
  attr_accessor :name
  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def name
    @name
  end

  def founder
    @founder
  end

  def domain
    @domain
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(type, self, venture_capitalist, investment)
  end




  ### Class Methods
    def self.all
      @@all
    end

end ###End of Startup Class

#### Build the following methods on the `Startup` class
#
# - DONE - `Startup#name`
#   - returns a **string** that is the startup's name
#
# - DONE - `Startup#founder`
#   - returns a **string** that is the founder's name
#   - Once a startup is created, the founder cannot be changed.
#
# - DONE -`Startup#domain`
#   - returns a **string** that is the startup's domain
#   - Once a startup is created, the domain cannot be changed.
# - `Startup#pivot(domain)`
#   - given a string of a domain, change the domain of the startup

# -DONE `Startup#sign_contract(venture_capitalist, type, investment)`
#   - given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
#
# - `Startup#num_funding_rounds`
#   - Returns the total number of funding rounds that the startup has gotten
#
# - `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
#
# - `Startup#investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company
#
# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
#
# - DONE - `Startup.all`
#   - should return **all** of the startup instances
#
# - `Startup.find_by_founder`
#   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
#
# - `Startup.domains`
#   - should return an **array** of all of the different startup domains
#
