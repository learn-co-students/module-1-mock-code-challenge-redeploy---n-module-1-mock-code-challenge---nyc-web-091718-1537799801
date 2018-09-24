class Startup

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    self.all.detect {|startup| startup.founder == founder_name}
  end

  def self.domains
    self.all.uniq
  end

  def pivot(domain)
    if self.domain == domain
        self.domain = "Ruby"
  #domain is a reader based on instructions
  #do I change domain to an accessor?
    end
  end

  def sign_contract(vc, type, investment)
    self = FundingRound.net(self, vc, type, investment)
  end

  def num_funding_rounds
    #access fundingrounds class
    #count rounds associated with self (startup)
  end

  def total_funds
    #access fundingrounds class
    #add investments of self, maybe in an array
    #or might be a built in method
    #return that sum
  end

  def investors
    #use .uniq on array with investors to self
  end

end
