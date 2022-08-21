
# Array

=begin

 A Ruby array is created in many ways.
-----------------------------------
# Using literal constructor []
# Using new class method
# A single array can contain different type of values

=end

months = ["Jan", "Feb", "Mar", "Apr"]

# Accessing array element

#first element
puts "First element:"
puts months[0] # with index
puts months.at 0 # with at method and index
puts months.first # with first method

puts ""

# last element
puts "\nLast element:"
puts months[months.size-1]
puts months.at months.size - 1
puts months.last

puts ""

# Accessing with range
puts "\nAccess with range:"
puts months[0,2] # start from 0 position and end with before 2 position
puts months[0..2] # start from 0 position and with with including 2 position
puts months.take(2)

# Take vs Drop
puts "\nTake vs Drop:"
puts "Take method: months.take 2"
puts months.take 2
puts "Drop method: months.drop 2"
puts months.drop 2


# Adding items to Array
=begin
   Ruby array elements can be added in different ways.

   push or <<   * item can be added at the end of an array
   unshift   * item can be added only to the beggining of the array
   insert   *item can be added to any position
=end

puts "\nAll months:"
puts months

puts "After pushing one month by push method:"
puts months.push "May"
puts "After pushing one month by << operator:"
puts months << "Jun"
puts months.unshift("Beginning")
puts months.insert(1,"After begging")


# Removing items
=begin
Ruby array elements can be removed in different ways.

pop = remove last item
shift = remve first item
delete = delete with position
uniq = this is set uniq
=end

puts ""
days = ["Sat", "Sun", "Mon"]
puts "All Days: "
puts days
puts days.pop # delete the last element
puts days

puts days.shift


# Remove duplicate units
=begin
  Using uniq, duplicate elements can be removed from an array. It returns the remaining array.
=end

names = ["S", "S", "B"]
puts names.uniq
