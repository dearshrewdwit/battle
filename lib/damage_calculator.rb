class DamageCalculator

  attr_reader :amount

  def initialize(amount=10)
    @amount = amount
  end

  def randomize
    @amount = rand(0..20)
  end
  
end
