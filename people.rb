

################ Super Class ################

class Person
  def initialize (name)
  @name = name
  end

  def greeting
    puts "Hi my name is #{@name}"
  end

end

################ Sub-Classes ################

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

################ Instructions ###############

chris = Instructor.new("Chris")
p chris.greeting


christina = Student.new("Christina")
p christina.greeting
