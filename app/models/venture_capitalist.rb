class VentureCapitalist
  attr_accessor :name, :networth

  @@all = []

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select do |vc|
      vc.tres_commas_club
    end
  end

  def initialize(name, networth)
    @name = name
    @networth = networth

    @@all << self
  end

  def tres_commas_club
    self.networth > 1000000
  end


end
