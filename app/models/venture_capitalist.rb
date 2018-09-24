class VentureCapitalist
  attr_accessor :name, :club

  @@all = []

  def self.all
    @@all
  end

  def self.tres_commas_club
    VentureCapitalist.all.select{|vc| vc.club ==  "Trés Commas"}
  end

  def initialize(name, club)
    @name = name
    @club = club
    @@all << self
  end

  def tres_commas
    if self.club == "Trés Commas"
      true
    else
      false
    end
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def portfolio
      FundingRound.all.select{|round| round.venture_capitalist == self}.map{|round| round.startup}.uniq
  end

  def funding_rounds
    FundingRound.all.select{|round| round.venture_capitalist == self}
  end


end
