require 'pry'
# #### Build the following methods on the `Startup` class
#
# - `Startup#name`
#   - returns a **string** that is the startup's name
# - `Startup#founder`
#   - returns a **string** that is the founder's name
#   - Once a startup is created, the founder cannot be changed.
# - `Startup#domain`
#   - returns a **string** that is the startup's domain
#   - Once a startup is created, the domain cannot be changed.
# - `Startup#pivot(domain)`
#   - given a string of a domain, change the domain of the startup
# - `Startup.all`
#   - should return **all** of the startup instances
# - `Startup.find_by_founder`
#   - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
# - `Startup.domains`
#   - should return an **array** of all of the different startup domains

class Startup
attr_reader :founder
attr_accessor :name
attr_writer :domain
@@all = []

  def initialize(name, founder, domain)
    @startup_name = name
    @founder_name = founder
    @domain = domain
    @@all << self
  end


  def name
    @name
  end


  def founder
    @founder
  end


  def domain
    @domain
  end

  def pivot(domain)
    self.domain = domain
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    self.all.find do |startup|
      startup.founder == founder
    end
  end


  def self.domains
    self.all.map do |startup|
      startup.domain
  end


end
