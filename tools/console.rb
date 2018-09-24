require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
require 'pry'

class Startup
  attr_accessor :name
  attr_accessor :founder

  @@all

def name=(name)
  @name = founders_name
end
Startup.all = #name, founder, domain

def founder
end

def domain
  @domain = "startup domain"
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
