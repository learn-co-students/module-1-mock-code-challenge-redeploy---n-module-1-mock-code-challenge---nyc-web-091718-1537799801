require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
S1 = Startup.new("First Start")
S2 = Startup.new("Second Start")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
