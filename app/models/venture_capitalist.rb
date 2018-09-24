class VentureCapitalist
  attr_accessor
  attr_reader :name, :net_worth

  @@all = []
  @@tres_commas_club = []

  def initialize(name, net_worth)
    @name = name
    @net_worth = net_worth.to_f
    @@all << self
    if @net_worth >= 1000000000
      @@tres_commas_club << self
    end
  end

  def self.all
    #return all VC instances with VentureCapitalist.all
    @@all
  end

  def self.tres_commas_club
    #returns array of all VCs in the Tres Commas Club
    @@tres_commas_club
  end

  def tres_commas
    #is the VC in the Tres Commas Club
    #returns boolean
    if VentureCapitalist.tres_commas_club.include?(self)
      true
    else
      false
    end 

  end

end
