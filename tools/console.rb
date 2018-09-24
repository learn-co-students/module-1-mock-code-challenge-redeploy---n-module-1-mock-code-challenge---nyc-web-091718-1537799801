require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("face","mark", "social")
s2 = Startup.new("amaz","jeff","buy")
s3 = Startup.new("appl","steve","tech")

vc1 = VentureCapitalist.new("bob",true)
vc2 = VentureCapitalist.new("al",false)
vc3 = VentureCapitalist.new("cat",true)

fr1 = FundingRound.new(s1,vc1,"a",250)
fr2 = FundingRound.new(s1,vc2,"b",300)
fr3 = FundingRound.new(s2,vc2,"c",400)
fr4 = FundingRound.new(s2,vc3,"d",700)
fr5 = FundingRound.new(s1,vc3,"e",100)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
