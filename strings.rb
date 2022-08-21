
name = "Shishir"

# Accessing string element
puts name[0]
puts name[0..2]
puts name[0, name.size]

puts name[0, name.size]
puts name[0..name.size]


# Variable Interpolation
country = "Banladesh"
capital = "Dhaka"
puts "#{capital} is the capital city of #{country}"


# Concatenating string

=begin

* Using plus sign in between strings.
* Using a single space in between strings.
* Using << sign in between strings.
* Using concat method in between strings.

=end

str = "I am Shishir" + "I am from Dhaka."
puts str
str = "I am Shishir" "I am from Dhaka."
puts str
str = "I am Shishir" << "I am from Dhaka."
puts str
str = "I am Shishir".concat("I am from Dhaka.")
puts str


# Comparing string

=begin

  * With == operator : Returns true or false
  * With eql? Operator : Returns true or false
  * With casecmp method : Returns 0 if matched or 1 if not matched

=end

puts "abc" == "abc"
puts "Abc" == "abc"

puts "abc".eql?"abc"
puts "Abc".eql?"abc"

puts "Java".casecmp "Java"
puts "Java".casecmp "java"
puts "Java".casecmp "ja"  
