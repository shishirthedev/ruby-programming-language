=begin 
    There are 4 type of variable in ruby
    1. Global Variable( start with $)
    2. Class Variable (Start with @@)
    3. Instance Variable (Start with @)
    4. Local Varaible ( only name)


    Global Variable: 
    1. start with $

=================================
    CLass Variable:  
    1. starts with @@
    1. Class specific not object specific. Hold same value for all the objects

    Class variables are the same for all instances, because they're class
    variables–associated with the class. Everything access the same variable, including each instance.

==================================
    Instance Variable:   
    1. starts with @ 
    2. Object specific. Hold object specific value.

===================================
    Local Variable: 
    1. No symbol to starts with just name 
    2. scope is only the block




Class variable (@@a_variable): Available from the class definition and any sub-classes. Not available from anywhere outside.

Instance variable (@a_variable): Available only within a specific object, across all methods in a class instance. Not available directly from class definitions.

Global variable ($a_variable): Available everywhere within your Ruby script.

Local variable (a_variable): It is available only in the particular method or block in ruby script. 
=end

class Person
    def name
        @name
    end
    def name=(new_value)
        @name = new_value
    end
end

# In Shortcut
class Person
   attr_reader :name
   attr_writer :name
end

# In more shortcut
class Person
    attr_accessor :name
end

p = Person.new
p.name = "Shishir"
puts p.name