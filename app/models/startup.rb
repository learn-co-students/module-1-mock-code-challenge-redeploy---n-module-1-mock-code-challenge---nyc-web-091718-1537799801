class Startup
  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def self.all
    @@all
  end

  # Returns the **first startup** whose founder's name matches
  def self.find_by_founder(name)
    # Go through @@all array of startups
    # Find the instance of Startup where @founder == name
    self.all.find do |startup|
      startup.founder == name
    end
  end

  # Return an **array** of all of the *different* startup domains
  def self.domains
    self.all.map {|startup| startup.domain}.uniq
  end

  # Change the domain of the startup
  def self.pivot(domain)
    self.domain = domain
  end

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    self.class.all << self
  end

  # Creates a new funding round and associates it
  # with that startup and venture capitalist.
  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

  # Returns an array of all funding rounds for that startup
  def funding_rounds
    # Goes through single source of truth (FundingRound class)
    # Iterates over @@all FundingRounds
    # Collects all FundingRounds where @self == SELF
    FundingRound.all.select {|funding_round| funding_round.startup == self}
  end

  # Returns the total number of funding rounds that
  # the startup has gotten
  def num_funding_rounds
    # Count the number of that startup's funding rounds
    self.funding_rounds.count
  end

  # Returns the total sum of investments that the startup has gotten
  def total_funds
    self.funding_rounds.inject {|x, sum| x.investment + sum}
  end

  # Returns a **unique** array of all the venture capitalists that
  # have invested in this company
  def investors
    self.funding_rounds.map {|funding_round|
      funding_round.venture_capitalist}.uniq
  end

  # Returns a **unique** array of all the venture capitalists that
  # have invested in this company AND are in the Trés Commas club
  def big_investors
    self.investors.select {|venture_capitalist| venture_capitalist.tres_commas}
  end

  # private


end
