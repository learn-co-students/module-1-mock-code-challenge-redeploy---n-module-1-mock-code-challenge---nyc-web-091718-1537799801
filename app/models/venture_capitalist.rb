class VentureCapitalist

  attr_accessor :name, :tres_commas

  @@all = []

  def self.all
    @@all
  end


  def initialize(name, tres_commas)
    @name = name
    @tres_commas =
    if tres_commas >= 1000000000
      true
      @tres_commas << tres_commas
    else
      false
    end

    @@all << self
  end

  def tres_commas_club
    @@all.map do |      |

  end


end
