class Startup
  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    self.all.select {|startup|  startup.founder == founder}
  end

  def self.domains
    self.all.map {|startup| startup.domain}.uniq
  end

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

  def fundingrounds
    FundingRound.all.select {|round| round.startup == self}
  end

  def num_funding_rounds
    self.fundingrounds.count
  end

  def total_funds
    self.fundingrounds.map {|round| round.investment}.reduce(:+)
  end

  def investors
    binding.pry
    self.fundingrounds.map {|round| round.venture_capitalist}.uniq
  end

  def big_investors
    self.investors.select {|investor| investor.tres_commas == true}.uniq
  end

  # - `Startup.pivot(domain)`
  #   - given a string of a domain, change the domain of the startup
  #just make a new startup ????
  def pivot(domain)
    Startup.new(@name, @founder, domain)
  end

end
