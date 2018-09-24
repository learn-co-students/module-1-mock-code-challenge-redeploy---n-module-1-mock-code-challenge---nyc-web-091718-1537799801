
class VentureCapitalist

  attr_reader :name
  attr_accessor :tres_commas
  @@all = []

  def initialize(name,tres_commas)
    @name = name
    @tres_commas = tres_commas
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select {|vc| vc.tres_commas}
  end

  def offer_contract(startup,type,investment)
    FundingRound.new(startup,self,type,investment)
  end

  def portfolio
    # do select on funding round.all where venture capitalist = self
    # get an array of all funding rounds, and take the startups and do .uniq on Array

  end

  def funding_rounds

  end

  def biggest_investment

  end

end
