require 'bundler/setup'
Bundler.require
require_rel '../app'

al = VentureCapitalist.new("Al")
tiff = VentureCapitalist.new("Tiff")
max = VentureCapitalist.new("Max")

al.club = true
max.club = true

asc = Startup.new("ASC", "Al", "Gym")
