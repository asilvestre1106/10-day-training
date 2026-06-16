class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def eat
    puts "#{@name} is eating!"
  end

  def sleep
    puts "#{@name} is sleeping..."
  end

  def speak
    puts "GRRRRR!"
  end
end

class Dog < Animal
  def bark
    puts "#{name}: BARK!"
  end

  def speak
    super #runs the parent version first
    puts "Hello I am a dog"
  end
end

class Cat < Animal
  def meow
    puts "#{name}: MEOW!"
  end

  def speak
    super #runs the parent version first
    puts "Hello I am a cat"
  end
end

dog = Dog.new("Buddy")
cat = Cat.new("Spencer")

dog.sleep
dog.eat
dog.bark
dog.speak

cat.sleep
cat.eat
cat.meow
cat.speak