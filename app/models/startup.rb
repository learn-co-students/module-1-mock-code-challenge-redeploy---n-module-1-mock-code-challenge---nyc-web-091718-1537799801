require "../lib/starup.rb"
require "../lib/funding_round.rb"
require "../lib/venture_capitalist.rb"

require 'pry'

class Startup
  attr_accessor :name
  attr_accessor :founder

  @@all

def name=(name)
  @name = founders_name
end
Startup.all = #name, founder, domain

def founder
  @founder
end

def domain
  @domain = "startup domain"
end

#Startup.find_by_founder`
#  - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
#- `Startup.domains`
#  - should return an **array** of all of the different startup domains
#- `Startup#pivot(domain)`
#  - given a string of a domain, change the domain of the startup

end# end of Starup class
