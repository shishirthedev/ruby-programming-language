
# Ruby range represents a set of values with a beginning and an end

# Ruby has a veriety of ways to use ranges
#----------------------------------------------
# Ranges as sequences
# Ranges as conditions
# Ranges as intervals
#----------------------------------------------

# Ranges as sequences
=begin
* The most natural way to define a range is in sequence.
* They have a start point and an end point.
* They are created using either .. or ... operators.
=end

range1 = 0..5 # range inclusive end value: 0,1,2,3,4,5
range2 = 0...5 # Range excluding end value: 0,1,2,3,4

puts "Range 1 with #{range1} : #{range1.to_a}"
puts "Range 2 with #{range2} : #{range2.to_a}"

# find minimum in ranges
puts range1.min

# find maximum in Ranges
puts range1.max

# Include any value in range
puts range1.include?(3)
puts range1.include? 3

# iterate with range
range1.each do |digit|
  puts "#{digit}"
end


rejectValues = range1.reject {|digit| digit == 2}
puts "Rejected Values: #{rejectValues}"



# Range as conditions
puts "\Range as Condition:"
mark = 75
grade = case mark
when 70..80 then "A+"
when 60..70 then "A"
end
puts "Grade: #{grade}"


# Range as intervals
puts "\nRange as Intervals"
=begin
Ranges can also be defined in terms of intervals.
Intervals are represented by === case equality operator.
* Interval can also be doing as include method of range
=end

if((1..5) === 4)
  puts "4 lies in interval"
end

if(('a'..'e') === 'b')
  puts "b lies in interval"
end

if((1..5).include? 4)
  puts "4 lies in interval"
end

# Ruby reversed range
=begin
 *Ruby reverse range operator does not return any value.
 *If left side value is larger than right side value in a range, no vlaue will be returned.
=end
reversedRange = 5..1
puts "Reversed range: #{reversedRange.to_a}"



# Range to Array
# 1. using Array method
# 2. using to_a

puts "Using Array: #{Array (1..5)}"
puts "Using to_a: #{(1..5).to_a}"
