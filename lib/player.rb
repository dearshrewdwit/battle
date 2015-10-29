# require 'damage_calculator'

class Player

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def attack
    DamageCalculator.randomize
  end

  def receive_damage(attack)
    @health -= attack
  end

end
