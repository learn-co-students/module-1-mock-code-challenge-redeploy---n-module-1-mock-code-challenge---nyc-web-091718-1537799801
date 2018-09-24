require 'bundler/setup'
Bundler.require
require_rel '../app'


startup1 = Startup.new("Startup", "Founder", "Domain")

venture = VentureCapitalist.new("Bill", 200000000)

binding.pry
