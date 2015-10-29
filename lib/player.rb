require_relative 'damage_calculator'

class Player

  DEFAULT_HEALTH = 100

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = DEFAULT_HEALTH
  end

  def receive_damage
    @health -= damage
  end

  def damage
    DamageCalculator.randomize
  end

end
