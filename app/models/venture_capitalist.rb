class VentureCapitalist
  attr_accessor :name, :club_status
  @@all = []
  @@tres_commas_club = []

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@tres_commas_club
  end

  def initialize(name, club_status = "no")
    @name = name
    @club_status = club_status.downcase
    self.class.all << self
    self.class.tres_commas_club << self if club_status == "yes"
  end

end
