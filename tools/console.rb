require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


s1 = Startup.new("John Hill", "The Startr")
s2 = Startup.new("Sarah Wilson", "The Endr")
s3 = Startup.new("Luke Robertson", "The Middlr")


vc1 = VentureCapitalist.new("Mr. Smith")
vc2 = VentureCapitalist.new("Ms. Harrison")
vc3 = VentureCapitalist.new("Mr. Owen")

fr1 = FundingRound.new("Angel", s2, vc2)
fr2 = FundingRound.new("Pre-Seed", s3, vc3)
fr3 = FundingRound.new("Seed", s2, vc3)
fr4 = FundingRound.new("Series A", s1, vc1)
r4 = FundingRound.new("Series A", s1, vc1)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
