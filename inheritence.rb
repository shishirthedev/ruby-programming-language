#Inheritance
# To inherit a class '<' sign is used in ruby.
# almost everything same as other OOP concept.
# Here Calling the super class constructor method
# Show name method overriding
# T


class Parent
    def initialize name
      puts "#{name} Class Initilized !"
    end

    def showName
        puts "Parent 1st"
    end 
end 

class Child < Parent
    def initialize(name)
      super("parent")
      puts "#{name} Class initialized !"
    end

    def showName
        puts "Child 1st"
    end 
end 


c1 = Child.new "C"
c1.showName