class VentureCapitalist
  attr_reader :name
  attr_accessor :tres_commas
  @@all = []

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select do |vc|
      vc.tres_commas == true
    end
  end

  def initialize(name, tres_commas)
    @name = name
    @tres_commas = tres_commas
    @@all << self
  end

  def offer_contracts(new_startup,type,amount)
    new FundingRound(new_startup,self,type,amount)
  end

  def funding_rounds
    FundingRound.all.select do |fr|
      fr.venture_capitalist == self
    end
  end

  def portfolio
    self.funding_rounds.map do |fr|
      fr.startup
    end.uniq
  end

  def biggest_investment
    max_amt = 0
    max_inv = nil
    self.funding_rounds.each do |my_fr|
      if my_fr.investment > max_amt
        max_amt = my_fr.investment
        max_inv = my_fr
      end
    end
    max_inv
  end

  def invested(domain)
    self.funding_rounds.select do |fr|
      fr.startup.domain == domain
    end.map do |my_doms|
      my_doms.investment
    end.inject(0){|sum,x| sum + x}
  end
end #end of class
