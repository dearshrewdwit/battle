# require 'damage_calculator'

class Player

  DEFAULT_HEALTH = 100

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = DEFAULT_HEALTH
  end

  def attack
    DamageCalculator.randomize
  end

  def receive_damage(attack)
    @health -= attack
  end

end
