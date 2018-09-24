class VentureCapitalist

  attr_accessor :name, :tres_commas

  @@all = []
  @@tres_all = []

  def initialize(name, tres_commas)
    @name = name
    @@all << self
    @tres_commas = false
    if tres_commas == "tres_commas"
      @@tres_all << self
      @tres_commas = true
    end
  end

  def tres_commas
    @tres_commas
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@tres_all
  end

  def offer_contract(startup, type, investment.to_f)
  end

  def portfolio
  end

  def funding_rounds
  end

  def biggest_investment
  end

  def invested(domain)
  end

end
