class Startup
  attr_reader :founder, :domain, :name
  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(type, self, venture_capitalist, investment)
  end

  def funding_rounds
    FundingRound.all.select do |round|
      round.startup == self
    end
  end

  def investors
    investors = self.funding_rounds.map do |round|
      round.venture_capitalist
    end
    investors.uniq
  end

  def big_investors
    self.investors.select do |investor|
      investor.tres_commas = true
    end
  end

  def num_funding_rounds
    self.funding_rounds.count
  end

  def total_funds
    funding = self.funding_rounds.map do |round|
      round.investment
    end
    funding.inject(0){|sum, money| sum + money}
    end


  ### Class Methods
  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    @@all.find do |startup|
      startup.founder == founder
    end
  end

  def self.domains
    @@all.map do |startup|
      startup.domain
    end
  end

end ###End of Startup Class
