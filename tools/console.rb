require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("FB", "Shelby", "education")
s2 = Startup.new("Twitter", "Britt", "social")
s3 = Startup.new("Twilio", "Charlee", "CS")

v1 = VentureCapitalist.new("AJ", 1000001)
v2 = VentureCapitalist.new("Jo", 10)
v3 = VentureCapitalist.new("Al", 10000000000)

f1 = FundingRound.new(s1, v1, "Angel", 10000.00)
f2 = FundingRound.new(s1, v3, "Pre-seed", 500.00)
f3 = FundingRound.new(s3, v3, "Series A", 4500.00)
f4 = FundingRound.new(s2, v2, "Angel", 62397.00)


# rounds = s1.num_funding_rounds
total = s1.total_funds
#sign = s1.sign_contract(v1, "Angel", 50000.00)


# tcc1 = v1.tres_commas_club
# tcc2 = v2.tres_commas_club
# tcc3 = v3.tres_commas_club
#
# sbf1 = Startup.find_by_founder("Shelby")
# sbf2 = Startup.find_by_founder("Britt")

#domains = Startup.domains

#Note: COME BACK TO THIS
#change_domain = s1.pivot("dancing")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
