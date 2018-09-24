require 'pry'
# #### Build out the following methods on the `VentureCapitalist` class
#
# - `VentureCapitalist#name`
#   - returns a **string** that is the venture capitalist's name
# - `VentureCapitalist#tres_commas`
#   - returns a **boolean** stating whether or not the venture capitalist is in the Trés Commas club
# - `VentureCapitalist.all`
#   - returns an array of all venture capitalists
# - `VentureCapitalist.tres_commas_club`
#   - returns an array of all venture capitalists in the Trés Commas club
class VentureCapitalist
  attr_reader
  attr_accessor :name
  @@all = []
  @startups = []

  def initialize(name, *startups)
    @name = name
    (@startups << startups).flatten!
  end

  def startups
    @startups
  end

  def tres_commas
    @@tres_commas_club.include?(self)
  end


  def self.tres_commas_club
    @@tres_commas_club = self.all.select do |vc|
      vc.startups.include?("Tres Commas Club")
  end

  def self.all
    @@all
  end

  def make_investment
    FundingRound.accept_investment()
    set a variable 
  end
end
