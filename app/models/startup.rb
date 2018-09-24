class Startup

  attr_accessor :name
  attr_reader :founder, :domain
    @@all = []

    def self.all
      @@all
    end

    def self.find_by_founder(founder)
      Startup.all.find{|startup| startup.founder == founder}
    end

    def self.domains
      Startup.all.map{|startup| startup.domain}
    end

  #  def pivot(domain)
  #    self.domain = given a string of a domain, change the domain of the startup
  #  end

    def initialize(name, founder, domain)
      @name = name
      @founder = founder
      @domain = domain
      @@all << self
    end


    def sign_contract(venture_capitalist, type, investment)
      FundingRound.new(self,venture_capitalist, type, investment)
    end

    def num_finding_rounds
      FundingRound.all.select{|round| round.startup == self}.count
    end

    def total_funds
      FundingRound.all.select{|round| round.startup == self}.map{|round| round.investment}#then Id sum the array using reduce or something?
    end

    def investors
      FundingRound.all.select{|round| round.startup == self}.map{|round| round.venture_capitalist}.uniq
    end

    def big_investors
      FundingRound.all.select{|round| round.startup == self && round.vc.club =="Tres Commas"}.map{|round| round.venture_capitalist}.uniq
      
    end





end
