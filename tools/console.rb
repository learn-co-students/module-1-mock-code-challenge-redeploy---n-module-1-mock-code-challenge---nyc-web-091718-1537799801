require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

vc1 = VentureCapitalist.new("Steve")
vc2 = VentureCapitalist.new("Bill")
vc3 = VentureCapitalist.new("John")

s1 = Startup.new("WebMD", "Thomas Edison", "health")
s2 = Startup.new("Flatiron Health", "Bill Clinton", "health")
s3 = Startup.new("Tech", "Tech Founder", "tech")

f1 = FundingRound.new("Angel", s1, vc1, 3000000000)
f2 = FundingRound.new("Seed", s2, vc2, 200000)
f3 = FundingRound.new("Series A", s3, vc3, 100000000)

f4 = s1.sign_contract(vc3, "Seed", 100000000)
f5 = vc3.offer_contract(s1, "Angel", 200)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
