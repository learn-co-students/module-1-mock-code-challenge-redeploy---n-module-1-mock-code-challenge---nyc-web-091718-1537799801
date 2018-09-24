require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Joe", "Newcompany", "domain1" )
s2 = Startup.new("Bob", "Anothercompany", "domain2" )

v1 = VentureCapitalist.new("Steve", "no")
v2 = VentureCapitalist.new("Anna", "yes")

f1 = FundingRound.new("Angel", s1, v1, 20.0)
f2 = FundingRound.new("Pre-seed", s1, v2, 110.0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
