
# In Ruby every controls statement and loop (for, while, do-while, until) end with "end" keyword

#For loop
puts "Foor loop"
working_days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday"]
for day in working_days do
  puts day
end

# working_days.each do |day|
#   puts day
# end


# For Loop with Range
puts "For loop with range"
n = 10
for i in 0..n do
  puts i
end

# n.times do |i|
# end 

# 0.upto(n) do |i|
# end



#For loop with break
puts "For Loop with break"
for i in 0..n do
  puts i
  if(i == 5)
    break
  end
end


# While Loop ( Jotokhon porjonto eta hobe )
puts "While Loop"
n = 5
while n > 0
  puts n
  n -= 1
end


# Until loop ( Jotokhon Porjonto eta na hobe )
puts ""
puts "Until loop"
n = 10
until n == 0
  puts n
  n -= 1
end


# Single line comment


=begin
  Multi line comment  starts with =begin and ends with =end
=end
