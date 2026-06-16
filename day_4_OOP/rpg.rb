class Character
  attr_accessor :name
  attr_accessor :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def show_info
    puts "Name: #{@name}"
    puts "Health: #{@hp}"
  end

  def attack
    puts "#{@name} used Punch!"
    puts "It whiffed!"
  end

  def alive?
    @hp > 0
  end

  def take_damage(amount)
    @hp -= amount

    if @hp < 0
      @hp = 0
    end
  end

  def heal (heal)
    @hp += heal
    if @hp > 100
      @hp = 100
    end
  end

  def battle(target)
    damage = attack
    target.take_damage(damage)
    puts "#{target.name} took #{damage} damage!"
    puts "#{target.name} HP: #{target.hp}" 
    if target.alive? == false
      puts "#{target.name} is dead!"
    end
  
  end
end

class Warrior < Character
  def attack
    puts "#{name} used Slash!"
    50
  end
end

class Mage < Character
  def attack
    puts "#{name} used Fireball!"
    25
  end
end

class Archer < Character
  def attack 
    puts "#{name} used Arrow Barrage!"
    18
  end
end

warrior = Warrior.new("Andre", 100)
mage = Mage.new("Ced", 100)
archer = Archer.new("Card", 100)

battle_is_on = true

while battle_is_on == true do
  warrior.battle(mage)

  if mage.alive? == false
    puts "#{warrior.name} wins!"
    battle_is_on = false
  else
    mage.battle(warrior)

    if warrior.alive? == false
      puts "#{mage.name} wins!"
      battle_is_on = false
    end
  end
end