class Startup
  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    self.all.find do |startup|
      startup.founder == founder_name
    end
  end

  def self.domains
    self.all.map do |startup|
      startup.domain
    end
  end

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  #Note: COME BACK TO THIS
  # def pivot(domain)
  #   self.domain = domain
  # end

  def sign_contract(vc, type, investment)
    new = FundingRound.new(self, vc, type, investment)
  end

  def num_funding_rounds
    rounds = FundingRound.all.select do |fr|
      fr.startup == self
    end
    rounds.count
  end

  def total_funds
    rounds = FundingRound.all.select do |fr|
      fr.startup == self
    end
    total_funds=0
    rounds.each do |round|
      total_funds+=round.investment
    end
    total_funds
  end

  def investors
    #iterate over FundingRound.all
    #select the ones for self
    #iterate over startups funding round
    #map a new array of founders
  end

  def big_investors

  end

end
