def hello
  puts "Hi there"
  puts "Ruby is Awesome"
end

hello

class Demo
  puts "class definition of self #{self}"
  puts "self class is #{self.class}"
  attr_accessor :class_var, :name
  @@class_var = 5
  @@another_var = 2
  def initialize(name, value)
    @name = name
    @value = value
  end
  def Demo.class_var
    @@class_var
  end
  def say_hi
    puts "Hi"
  end
end
d = Demo.new("Shailesh", 5)
puts "Accessing public instance var"
puts "done"
puts d.name
puts d.class_var
puts "Accessing class variable"
puts Demo.class_var
puts "Done"
puts Object.methods.to_s
puts (d.methods - Object.methods).to_s
puts d.methods.select { |method| method.to_s.include? "method" }.to_s

# proc scope testing
def sample_func
  a = 44
  yield
end
a = 14
sample_proc = Proc.new { puts "The value of a is #{a}"}
sample_func &sample_proc

puts "===" * 5
puts "self is #{self}"
puts "self class is #{self.class}"
puts "===" * 5