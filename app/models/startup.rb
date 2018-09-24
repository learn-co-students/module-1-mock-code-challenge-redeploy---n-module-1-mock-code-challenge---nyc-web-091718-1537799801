class Startup
  attr_accessor :name
  attr_reader :founder, :domain
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    self.all.find {|startup| startup.founder == founder_name}
  end

  def self.domains
    self.all.map {|startup| startup.domain}
  end

  def initialize(founder, name, domain)
    @founder = founder
    @name = name
    @domain = domain
    self.class.all << self
  end #end initialize method

  def pivot(domain)
    #how do i change the domain without doing self.domain = "domain"
  end

  def sign_contract(venture_capitalist, type, investment)
    new_contract = FundingRound.new(type, self, venture_capitalist, investment)
  end #end sign_contract

  def funding_rounds
    FundingRound.all.select {|funding_round| funding_round.startup == self}
  end

  def num_funding_rounds
    self.funding_rounds.length
  end

  def total_funds
    self.funding_rounds.map{|funding_round| funding_round.investment}.reduce(:+)
  end

  def investors
    #call funding_round helper method and then collect the funding_round.investor names
  end

end
