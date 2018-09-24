class Startup
attr_accessor :name
attr_reader :founder, :domain

@@all = []

def self.all
@@all
end

def initialize(name)
  @name  = name
  @founder = founder
  @domain = domain
  @@all << self
end

def self.find_by_founder(founder_name)
self.all.select { |founders| founder.founder == founder_name }
end

def self.domains
self.all.domains#return array of all startup domains
end


def pivot(domain)
@domain = domain #set to new domain 
end

end
