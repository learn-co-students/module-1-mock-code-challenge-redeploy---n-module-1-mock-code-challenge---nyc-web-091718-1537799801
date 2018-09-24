require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Bingo", "Roger", "www.bingo.com")
s2 = Startup.new("Bongo", "Roger", "www.bongo.com")
s3 = Startup.new("Blicky", "Tekashi", "www.blicky.com")

v1 = VentureCapitalist.new("Obama", true)
v2 = VentureCapitalist.new("Bernie", false)

f1 = FundingRound.new(s1, v1, "Pre-Seed", 1000.00)
f2 = FundingRound.new(s1, v1, "Seed", 100500.00)
f3 = FundingRound.new(s3, v2, "Angel", 15.00)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
