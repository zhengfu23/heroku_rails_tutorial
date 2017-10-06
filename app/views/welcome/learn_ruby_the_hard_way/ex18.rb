# Class exercises
# An animal class!
class Animal
end

# A dog class!
class Dog < Animal
  def initialize(name)
    # initialize the dog with a cute name!
    @name = name
  end
end

# A cat class!
class Cat < Animal
  def initialize(name)
    @name = name
  end
end

# A person class!
class Person
  def initialize(name)
    @name = name

    @pet = nil
  end

  attr_accessor :pet
end

# An employee class. Better work hard!
class Employee < Person
  def initialize(name, salary)
    # using the super class constructor!
    super(name)

    @salary = salary
  end
end

# Fish class!
class Fish
end

# A salmon is a fish!
class Salmon < Fish
end

# A halibut is also a fish!
class Halibut < Fish
end

rover = Dog.new('Rover')

meow = Cat.new('Meow')

mary = Person.new('Mary')

mary.pet = meow

frank = Employee.new('Frank', 120_000)

frank.pet = rover

flipper = Fish.new

crouse = Salmon.new

harry = Halibut.new
