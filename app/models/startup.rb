require 'pry'

class Startup

  attr_reader :startup_name, :founder_name

  @@all = []

  def initialize(startup_name, founder_name)
    @startup_name = startup_name
    @founder = founder_name
    @@all << self
  end

  def self.all
    @@all

  end

  # def self.find_by_founder(founder_name)
  # found_startup =   self.all.select |founder|
  #
  #   founder.startup_name == founder_name
  # end

  # def name
  #   @startup_name
  # end



end
