# Constructor
=begin
     -- A constructor is a special method which automatically get invoked when any object/instance of
    the class  is created.

    --Constructor normally used to initialize the instance variable.

    -- In ruby, the constructor is defined with the  def and   initialize keyword.


=end

class C1
    def initialize
      puts "The initilizer Called"
    end
end 

obj = C1.new


# Initilize Instance variable in constructor
class T2 
    def initialize(name)
      @name = name
    end

    def show
        puts "Welcome, #{@name}"
    end
end 

obj1 =T2.new "Shishir"
obj1.show


# Instance variable are by default private. So we have to create attr_accessor for them to access outside the class.

class T3
    attr_accessor :name

    def initialize(nn)
      @name = nn
    end

end 

obj =  T3.new "Rafi"
puts obj.name
