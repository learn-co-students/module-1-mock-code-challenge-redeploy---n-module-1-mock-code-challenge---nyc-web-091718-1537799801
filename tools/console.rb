require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("ShareBnB", "Archie Andrews", "sharebnb.com")
startup2 = Startup.new("SouthsideTunes", "Jughead Jones", "southsidetunes.com")
startup3 = Startup.new("DarkCircle", "Archie Andrews", "darkcircleriverdale.com")

hiram = VentureCapitalist.new("Hiram Lodge", 3348963000)
veronica = VentureCapitalist.new("Veronica Lodge", 1234567890)
betty = VentureCapitalist.new("Betty Copper", 2345)


round1 = FundingRound.new("Angel", startup1, hiram, 1000)
round2 = FundingRound.new("Seed", startup2, veronica, -500) #testing if it will accept a negative investment


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
