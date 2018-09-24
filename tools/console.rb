require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Kickstater", "Bob", "www.kickstater.com")
s2 = Startup.new("Google", "Joe", "www.google.com")
s3 = Startup.new("McDonald", "Ben", "www.mcdonalds.com")

vc1 = VentureCapitalist.new("VentureCapitalist1", "club 1")
vc2 = VentureCapitalist.new("VentureCapitalist2", "club 2")
vc3 = VentureCapitalist.new("VentureCapitalist2", "Trés Commas")

fr1 = FundingRound.new(s1,vc1, "Angel", 100.0)
fr2 = FundingRound.new(s1,vc2, "Angel", 300.0)
fr3 = FundingRound.new(s3,vc2, "Seed", 500.0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
