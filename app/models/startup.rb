class Startup

  attr_reader :founder_name, :domain_name
  attr_accessor :startup_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(startup_name, founder_name, domain_name)
    @startup_name = startup_name
    @founder_name = founder_name
    @domain_name = domain_name

    @@all << self
  end

  def name
    self.startup_name
  end

  def founder
    self.founder_name
  end

  def domain
    self.domain_name
  end

  def self.find_by_founder(name)
    self.all.find do |company|
      company.founder = name
    end
  end

  def self.domains
    dms = []
    self.all.map do |dom|
      dms << dom.domain
    end
    dms
  end

#`Startup#name` - returns a **string** that is the startup's name
#`Startup#founder` - returns a **string** that is the founder's name - Once a startup is created, the founder cannot be changed.
#`Startup#domain` - returns a **string** that is the startup's domain - Once a startup is created, the domain cannot be changed.
#`Startup.all` - should return **all** of the startup instances
#   - `Startup.find_by_founder`
#     - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
#   - `Startup.domains`
#     - should return an **array** of all of the different startup domains
#   - `Startup.pivot(domain)`
#     - given a string of a domain, change the domain of the startup

# <!-- - `Startup#sign_contract(venture_capitalist, type, investment)`
#   - given a **venture capitalist object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `Startup#num_funding_rounds`
#   - Returns the total number of funding rounds that the startup has gotten
# - `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
# - `Startup#investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company
# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club -->
end
