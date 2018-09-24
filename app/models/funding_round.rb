class FundingRound
  # - `FundingRound.all`
  #   - returns all of the funding rounds
  # - `FundingRound#startup`
  #   - returns the startup object for that given funding round
  #   - Once a funding round is created, I should not be able to change the startup
  # - `FundingRound#venture_capitalist`
  #   - returns the venture capitalist object for that given funding round
  #   - Once a funding round is created, I should not be able to change the venture capitalist
  # - `FundingRound#type`
  #   - returns the type of funding round
  #   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
  # - `FundingRound#investment`
  #   - returns the amount invested during this funding round. This should be a float that is not be a negative number.
end
