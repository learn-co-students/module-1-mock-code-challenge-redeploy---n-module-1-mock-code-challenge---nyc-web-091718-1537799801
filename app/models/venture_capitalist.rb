class VentureCapitalist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def name
    @name
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(type, startup, self, investment)
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.venture_capitalist == self
    end
  end

  def portfolio
    self.funding_rounds.select do |fr|
        fr.startup
      #Go through FundingRound to retrieve all of my startups
    end
  end

  def investment_total
    total_investments = []
    self.funding_rounds.each do |fr|
        total_investments << fr.investment
    end
    total_investments.inject(0){|sum,investment| sum + investment}
  end

  def biggest_investment
    self.funding_rounds.select do |fr|
      ### Iterate through this VC and find .max in his investment value array
    end
  end


  def tres_commas
    if (self.investment_total) >= 1000000000
      true
    else
      false
    end
  end


  ###Class Methods
  def self.all
    @@all
  end

end ### End of VentureCapitalist Class

# - DONE - `VentureCapitalist#name`
#   - returns a **string** that is the venture capitalist's name
#
# - DONE`VentureCapitalist#tres_commas`
#   - returns a **boolean** stating whether or not the venture capitalist is in the Trés Commas club
#
# - DONE `VentureCapitalist.all`
#   - returns an array of all venture capitalists
#
# - `VentureCapitalist.tres_commas_club`
#   - returns an array of all venture capitalists in the Trés Commas club

#
# -DONE `VentureCapitalist#offer_contract(startup, type, investment)`
#   - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.

# - DONE `VentureCapitalist#portfolio`
#   - Returns a **unique** list of all startups this venture capitalist has funded

# - DONE  -`VentureCapitalist#funding_rounds`
#   - returns an array of all funding rounds for that venture capitalist

# - `VentureCapitalist#biggest_investment`
#   - returns the largest funding round given by this venture capitalist

# - `VentureCapitalist#invested(domain)`
#   - given a **domain string**, returns the total amount invested in that domain
