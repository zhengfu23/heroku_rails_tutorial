class Parent
  def initialize(name)
    @name = name
  end

  def print_info()
    puts @name
  end

  def implicit()
    puts 'PARENT implicit()'
  end

  def override()
    puts 'PARENT override()'
  end

  def altered()
    puts 'PARENT altered()'
  end
end

class Child < Parent
  def initialize(name, parent)
    @name = name
    @parent = parent
  end

  def print_info()
    super
    puts @parent.print_info
  end

  def override()
    puts 'CHILD override()'
  end

  def altered()
    puts 'CHILD, BEFORE PARENT altered()'
    super()
    puts 'CHILD, AFTER PARENT altered()'
  end
end

dad = Parent.new('Shawn')
son = Child.new('James', dad)

dad.print_info
son.print_info
