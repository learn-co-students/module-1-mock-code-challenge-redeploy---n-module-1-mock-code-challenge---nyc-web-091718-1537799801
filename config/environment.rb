require 'bundler/setup'
require 'pry'
Bundler.require
require_rel '../app'

chris = Startup.new("Noob Inc","Chris","Blah")

binding.pry
