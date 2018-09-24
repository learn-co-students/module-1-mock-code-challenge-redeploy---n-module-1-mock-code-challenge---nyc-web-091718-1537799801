class Startup

  attr_accessor :name, :domain
  attr_reader :founder

   @@all = []

   def self.all
     @@all
   end


   def self.find_by_founder(founder)
     
     end

   end

    def initialize(name, founder, domain)
      @name = name
      @founder = founder
      @domain = domain

      @@all << self
    end


    def pivot(domain)

    end





end
