=begin
There are 5 types of variable in ruby 
1. Global 2. Instance 3. Class 4. Local.  5. Constant

Global ( '$' ): Global variable start with $ sign and used outside class. 
If not initialized the default value of global variable is nil.
It is not recommended to use global variable.

Class ( '@@' ) :
 -- Class variable is start with @@. 
 -- class variable must be initialized before using them.  (class level variable)
 -- Shared between class and subclass


Instance ( '@' ): 
  -- Instance variable is also start with @ sign.
  --The default value of instance variable is also nil. 
  -- Instance variable vary from object to object. (object level variable)
  -- specific to that class only where declared.
  -- Ruby has shortcut for instance variable: attr_accessor, attr_reader, attr_writer.


Local : 
-- Locale variable are restricted to method.
-- Local variabale starts with lowercase letter or _ . (Method level variable)

Constant: Constant variable is declared with uppercase letter. 
Constant variable defined with a class can be access from that class or module only.

$variableName        #global scope
@@classVariable      #class scope, static across all class instances
@instanceVariable    #class object scope, value specific to object instance

=end

class MyClass

    def myMethod
        puts "Hello, from method inside"
    end
    
end

# In ruby object is created by 'new' keyword.
myClassObj = MyClass.new 
myClassObj.myMethod 


# Construction in Ruby: 
=begin
the constructor method name in ruby is initialize()
=end

class Area

    def initialize(width, height)
      @width, @height = width, height
    end

    def getWidth
        return @width
    end

    def getHeight
        return @height
    end

end

# creating object
obj = Area.new(2,3)
puts obj.getWidth * obj.getHeight


=begin
    Short cut for getter and seter is attr_accessor
    attr_accessor = both for get and set
    attr_reader = only for get
    attr_writer = only for set
=end
# attribute accessor

class Test
    attr_accessor :name, :age # both for get and set

    def to_s # string representation of object liek toString() in java.
        puts "#{name} is #{age} years old."
    end
end

obj1 = Test.new
obj1.name = "SHishir"
obj1.age = 28
puts obj1


# Class method/ Instance method/ Static Method:
# to call a class method/instance method we do not need any object. like static method in java
# both self and classname can be used to define a Class method. because self is refer to the class itself.
class StaticClassMethod

    @classVariable = 5

    def self.staticMethod
         puts "Class method with Self Keyword"
    end

    def StaticClassMethod.hi 
        puts "Class method with Class name"
    end 

end

puts StaticClassMethod.staticMethod
puts StaticClassMethod.hi