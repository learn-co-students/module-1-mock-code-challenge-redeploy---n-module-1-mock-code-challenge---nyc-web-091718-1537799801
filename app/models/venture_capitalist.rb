class VentureCapitalist
  @@all = []
  attr_accessor :name, :tres_commas

  def self.all
    @@all
  end

  def self.tres_commas_club
    @all.select {|vc| vc.tres_commas}
  end

  def initialize(name, tres_commas)
    @name = name
    @tres_commas = tres_commas
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def portfolio
    fr = self.funding_rounds
    fr.uniq
  end

  def funding_rounds
    FundingRound.all.select {|fr| fr.venture_capitalist == self}
  end

  def biggest_investment
    fr = self.funding_rounds
    fr.max { |a, b| a.investment <=> b.investment}

  end

  def invested(domain)
    fr = self.funding_rounds
    fr_of_domain = fr.select {|r| r.startup.domain == domain}
    total = 0
    fr_of_domain.each {|d| total += d.investment}
    total
  end
end
