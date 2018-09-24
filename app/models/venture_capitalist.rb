class VentureCapitalist

  attr_accessor :capitalist_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(capitalist_name)
    @capitalist_name = capitalist_name

    @@all << self
  end

  def name
    self.capitalist_name
  end

#`VentureCapitalist#name` - returns a **string** that is the venture capitalist's name
# - `VentureCapitalist#tres_commas`
#   - returns a **boolean** stating whether or not the venture capitalist is in the Trés Commas club
#`VentureCapitalist.all` - returns an array of all venture capitalists
# - `VentureCapitalist.tres_commas_club`
#   - returns an array of all venture capitalists in the Trés Commas club

# - `VentureCapitalist#offer_contract(startup, type, investment)`
#   - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `VentureCapitalist#portfolio`
#   - Returns a **unique** list of all startups this venture capitalist has funded
# - `VentureCapitalist#funding_rounds`
#   - returns an array of all funding rounds for that venture capitalist
# - `VentureCapitalist#biggest_investment`
#   - returns the largest funding round given by this venture capitalist
# - `VentureCapitalist#invested(domain)`
#   - given a **domain string**, returns the total amount invested in that domain

end
