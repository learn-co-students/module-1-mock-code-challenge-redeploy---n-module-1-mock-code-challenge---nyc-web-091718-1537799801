class Startup
  attr_accessor :name, :domain
  attr_reader :founder

  @@all = []

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


  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def pivot_domain (new_dom)
    #not sure how this is different then simply attr_accessor
    self.domain = new_dom
  end

  def sign_contracts(new_venture_cap,type,amount)
    new FundingRound(self,new_venture_cap,type,amount)
  end

  def funding_rounds
    FundingRound.all.select do |fr|
      fr.startup == self
    end
  end

  def num_funding_rounds
    self.funding_rounds.size
  end

  def total_funds
    self.funding_rounds.map do |my_fr|
      my_fr.investment
    end.inject(0){|sum,x| sum + x}
  end

  def investors
    self.funding_rounds.map do |my_fr|
      my_fr.venture_capitalist
    end
  end

  def big_investors
    self.investors.select do |my_inv|
      my_inv.tres_commas == true
    end
  end

end# end of startup class
