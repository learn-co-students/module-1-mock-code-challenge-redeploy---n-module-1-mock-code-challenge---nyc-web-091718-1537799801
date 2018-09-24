class Startup
  attr_accessor :name
  attr_reader :founder, :domain
  @@all = []

  def self.all?
    @@all
  end

  def self.find_by_founder(founder_name)
    @@all.find {|startup| startup.founder == founder_name}
  end

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    #@rounds = []
    @@all << self
  end

  def pivot(domain)
    @domain = domain
  end

  def sign_contract(venture_capitalist, type, investment)
    fr = FundingRound.new(self, venture_capitalist, type, investment)
    @rounds << fr
  end

  def num_funding_rounds
    self.rounds.size
  end

  def rounds
    FundingRound.all.select {|fr| fr.startup == self}
  end

  def total_funds
    investments = self.rounds.map {|fr| fr.investment}
    total = 0
    investments.each {|i| total += i}
    total
  end

  def investors
    fundRounds = FundingRound.all.select do |fr|
      fr.startup == self
    end
    investors = fundRounds.map {|fr| fr.venture_capitalist}

    investors.uniq
  end

  def big_investors
    fundRounds = FundingRound.all.select do |fr|
      fr.startup == self
    end
    investors = fundRounds.map {|fr| fr.venture_capitalist}
    bInvestors = investors.select {|i| i.tres_commas}
    bInvestors
  end
end
