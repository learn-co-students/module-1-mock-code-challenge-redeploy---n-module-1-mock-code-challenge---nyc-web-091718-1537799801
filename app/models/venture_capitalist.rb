class VentureCapitalist
  attr_accessor :name, :tres_commas

  @@all = []

  def self.all
    @@all
  end

  # Returns an array of all venture capitalists
    # in the Trés Commas club
  def self.tres_commas_club
    # Go through all VCs
    # Select ones where @tres_commas == true
    self.all.select do |venture_capitalist|
      venture_capitalist.tres_commas
    end
  end

  def initialize(name, tres_commas)
    @name = name
    @tres_commas = tres_commas
    self.class.all << self
  end

  # Creates a new funding round and associates it
  # with that startup and venture capitalist
  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  # Returns an array of all funding rounds for that venture capitalist
  def funding_rounds
    # Goes through single source of truth (FundingRound class)
    # Iterates over @@all FundingRounds
    # Collects all FundingRounds where @self == SELF
    FundingRound.all.select {|funding_round|
      funding_round.venture_capitalist == self}
  end

  # Returns a **unique** list of all startups
  # this venture capitalist has funded
  def portfolio
    self.funding_rounds.map {|funding_round| funding_round.startup}.uniq
  end


  # Returns the largest funding round given by this venture capitalist
  def biggest_investment
    self.funding_rounds.max_by {|funding_round| funding_round.investment}
  end

  # Returns the total amount invested in that domain
  def invested(domain)
    self.funding_rounds.find {|funding_round|
      funding_round.startup.domain == domain}.investment
  end

end
