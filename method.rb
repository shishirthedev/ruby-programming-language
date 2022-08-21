# In ruby we start a method with 'def' keyword
# In ruby if we start a method then we need to end the function by 'end' keyword
# The convention is to use underscores to separate words in a multiword method name in Ruby .

def say_hi
  puts "Hi, I am Shishir"
end

# Calling method, Method can be called with parenthesis or without parenthesis

#Calling method without parenthesis
say_hi
# Calling method with parenthesis
say_hi()



# Return Values
=begin
 * By default, a method returns the last statement
 * Also we can do so by using the return keyword
=end

def get_name_without_return_keyword
   "SHishir"
end

def get_name_with_return_keyword
   return "SHikto"
end

puts "Hi, #{get_name_without_return_keyword}"
puts "Hi, #{get_name_with_return_keyword}"


# Method with parameters
=begin
  * The argument list follows the method name.
  * The parentheses around the arguments are optional.
  * Multiple arguments are separated by a comma.
  * The arguments are positional
=end

def get_details(name, age)
  "I\'m #{name}. I am #{age} years old."
end

puts get_details("Shishir", 27)


# Parameters with default value
def add_values(num1, num2 = 5)
  puts "Sum is #{num1 + num2}"
end

# Method call without parentheses
add_values 15

# Method Call with parentheses
add_values(30)



# Method overriding
def language
  puts "Language in first method."
end

def language
  puts "Call from overriden method."
end

language()


# Scope /
aa = "Shishir"
def aa.add
  puts "#{self} is a good boy."
end

aa.add
