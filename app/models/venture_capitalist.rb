require 'pry'

class VentureCapitalist

  attr_reader :name, :trés_commas_club

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all

  end

#   def tres_commas(trés_commas_club)
#     new_club = []
#   self.all.select do |venture_capitalist|
#     if venture_capitalist.include?(trés_commas_club)
#       new_club << venture_capitalist
#       binding.pry
#     end
#   end
# end
#
#   def self.tres_commas_club
#     return new_club
#
#   end

end
