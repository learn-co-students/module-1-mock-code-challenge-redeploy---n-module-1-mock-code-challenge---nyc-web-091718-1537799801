

class VentureCapitalist

  attr_accessor :name, :club

  @@all = []

  def initialize(name)
    @name = name
    @club = nil
    self.class.all << self
  end

  def self.all
    @@all
  end

  def tres_commas
    self.club
  end

  def self.tres_commas_club
    @@all.select do |vc|
      vc.tres_commas == true
    end
  end

end
