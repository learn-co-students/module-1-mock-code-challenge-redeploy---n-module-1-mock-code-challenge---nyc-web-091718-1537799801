class VentureCapitalist
attr_accessor :name

  @@all = []

  def self.all
  @@all
  end

  def initialize(name)
    @name  = name
    @@all << self
  end

  def tres_commas
true
  end

  def self.tres_commas_club
##all will be in commas club until defined properly :(
#would use ternary operator to check if true
  end

end
