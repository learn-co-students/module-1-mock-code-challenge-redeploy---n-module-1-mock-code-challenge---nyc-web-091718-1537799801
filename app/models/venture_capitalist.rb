class VentureCapitalist
  attr_accessor :name, :tres_commas
  @@all = []

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select {|vc| vc.tres_commas == true}
  end

  def initialize(name, tres_commas = false)
    @name = name
    @tres_commas = tres_commas
    @@all << self
  end

  def change_membership(boolean)
    self.tres_commas = boolean
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def portfolio
    self.funding_rounds.map {|round| round.startup}.uniq
  end

  def funding_rounds
    FundingRound.all.select {|round| round.venture_capitalist == self}
  end

  def biggest_investment
    self.funding_rounds.sort_by {|round| round.investment}.last
  end

  def invested(domain)
    FundingRound.all.select {|round| round.startup.domain == domain}.map {|round| round.investment}.reduce(:+)
  end

end
