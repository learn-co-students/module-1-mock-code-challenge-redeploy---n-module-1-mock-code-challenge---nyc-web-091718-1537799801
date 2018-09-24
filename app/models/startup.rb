class Startup

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []
  @@domains = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@domains << @domain
    @@all << self
  end

  def self.all
    #returns all startup instances with Startup.all
    @@all
  end

  def self.find_by_founder(founder)
    #uses Startup.all.find to return the first with matching founder name

    Startup.all.find do |startup|
      startup.founder == founder
    end
  end

  def self.domains
    #returns array of all the different startup domains
    @@domains
  end

  def pivot(domain)
    #given a string of a domain, changes the domain of the startup
    #per #domain instructions, domain cannot be changed once startup is created. ??

    #would need to find the instance of the Startup and create a new instance with the new domain
    #could interate through self.domains to confirm startup already exists
    #then use select through self.all to find instance and create a new instance 

  end



end
