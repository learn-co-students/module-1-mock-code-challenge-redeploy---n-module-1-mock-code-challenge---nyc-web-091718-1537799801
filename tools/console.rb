require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Startup.new("Blue", "Bill Bonk", "Image Render")
s2 = Startup.new("Steel Inc", "Will Wonk", "Industrial Automation")
s3 = Startup.new("D3f", "Yeezus", "Music Creation")

vc1 = VentureCapitalist.new("Bill Bates",true)
vc2 = VentureCapitalist.new("Steve Yobs", true)
vc3 = VentureCapitalist.new("Dan Parker", false)

fr1 = FundingRound.new(s1,vc1,"seed",10000)
fr2 = FundingRound.new(s2,vc2,"series a", 200000)
fr3 = FundingRound.new(s3,vc3,"series b",1530000)

s1.sign_contract(vc2,"series c",800000)
s1.sign_contract(vc3,"partial investment", 2500)

vc2.offer_contract(s3,"series d",4000)

s2.pivot("Construction Data")

investors = s1.investors
big_investors = s1.big_investors
total = s1.total_funds
domains = Startup.domains
found = Startup.find_by_founder("Will Wonk")
tres_club = VentureCapitalist.tres_commas_club
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
