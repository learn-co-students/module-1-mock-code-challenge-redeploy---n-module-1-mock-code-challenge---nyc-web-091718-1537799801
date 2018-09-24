require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
require 'pry'

binding.pry

Dir['.app/models/*'].each {|file| require file}

s1 = Startup.new("company", "founder1", "technology")
s2 = Startup.new("company", "founder2", "america")
s3 = Startup.new("company", "founder3", "bugs")
s4 = Startup.new("company", "founder4", "trains")
s5 = Startup.new("company", "founder5", "technology")

binding.pry


v1 = VentureCapitalist.new("James")
v2 = VentureCapitalist.new("Karen")
v3 = VentureCapitalist.new("Robot_man")

binding.pry


#(startup, venture_capitalist, type, investment)
fr1 = FundingRound.new(s1, v1, "type1", 500)
fr2 = FundingRound.new(s1, v1, "type1", 100)
fr3 = FundingRound.new(s1, v1, "type1", 7500)
fr4 = FundingRound.new(s1, v1, "type1", 54574570)
fr5 = FundingRound.new(s1, v1, "type1", -1)


binding.pry

000
