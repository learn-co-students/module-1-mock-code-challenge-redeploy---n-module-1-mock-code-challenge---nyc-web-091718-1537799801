
class Startup

  attr_accessor :name
  attr_reader :founder, :domain
  @@all = []

  def initialize(name,founder,domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_founder(name)
    @@all.find do |startup|
      startup.founder == name
    end
  end

  def self.domains
    @@all.map do |startup|
      startup.domain
    end
  end

  def pivot(domain)
    @domain = domain
  end

  def sign_contract(vc,type,investment)
    FundingRound.new(self,vc,type,investment)
  end

  def num_funding_rounds

  end

  def total_funds
    total = 0
    FundingRound.all.each do |funding_round|
      if(funding_round.startup == self)
      total += funding_round.investment
      end
    end
    total
  end

  def investors
    investor_arr = []

    FundingRound.all.map do |funding_round|
      if(funding_round.startup == self)
          investor_arr << funding_round.venture_capitalist
      end
    end
    investor_arr.uniq

  end

  def big_investors

    investor_arr = []

    FundingRound.all.map do |funding_round|
      if(funding_round.startup == self)
        if(funding_round.venture_capitalist.tres_commas)
          investor_arr << funding_round.venture_capitalist
        end
      end
    end
    investor_arr.uniq
  end

end
