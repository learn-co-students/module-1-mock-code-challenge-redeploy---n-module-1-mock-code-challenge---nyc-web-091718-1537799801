class Startup

  attr_accessor :name, :venture_capitalist, :type, :investment
  attr_reader :founder, :domain

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    self.all.find do |instance|
      if instance.founder
        return instance
      end
    end
  end

  def self.domains
    self.all.map do |instance|
      instance.domain
    end
  end

  def pivot(domain)
    @domain = domain
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(venture_capitalist, type, investment, self)
  end

  def num_funding_rounds
    @investment.to_i
  end

  def total_funds
  end

  def investors
  end

  def big_investors
  end

end
