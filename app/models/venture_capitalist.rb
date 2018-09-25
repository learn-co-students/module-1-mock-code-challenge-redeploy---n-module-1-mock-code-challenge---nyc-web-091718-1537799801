class VentureCapitalist
  attr_accessor :name, :tres_commas
  @@all = []

  def initialize(name, tres_commas)
    @name = name
    @tres_commas = tres_commas

    @@all << self
  end

  def name
    @name
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(type, startup, self, investment)
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.venture_capitalist == self
    end
  end

  def startups
    startups = self.funding_rounds.map do |round|
      round.startup
    end
  end

  def portfolio
    self.startups.uniq
  end

  def investment_total
    total_investments = []
    self.funding_rounds.each do |fr|
        total_investments << fr.investment
    end
    total_investments.inject(0){|sum,investment| sum + investment}
  end

  def biggest_investment
    all = self.funding_rounds.select do |fr|
        fr.investment
    end
    final = all.sort_by do |all|
      all.investment
    end
    final.last
  end

  def invested(domain)
    total = 0

    all_in_domain = self.startups.select do |startup|
      startup.domain == domain
    end
    all_in_domain.each do |startup|
      total += startup.total_funds

    end
    total
  end


  ###Class Methods
  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select do |vc|
      vc.tres_commas == true
    end
  end

end ### End of VentureCapitalist Class
