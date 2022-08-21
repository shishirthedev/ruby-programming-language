
# In Ruby every controls statement and loop (for, while, do-while, until) end with "end" keyword
#If Else
age = 12
if(age >18)
  puts "Adult"
else
  puts "Not Adult"
end


# Ruby Ternary Statement ( Short form of if else )
marks = 20
is_pass = marks >= 33 ? "Passed" : "Failed"
puts is_pass



# Else if
monthNumber = 3
if monthNumber == 1
  puts "January"
elsif monthNumber == 2
  puts "February"
elsif monthNumber == 3
  puts "March"
elsif monthNumber == 4
  puts "April"
elsif monthNumber == 5
  puts "May"
else
  puts "Not in the list"
end

# In Ruby siwtch statement, siwtch keyword is replaced by case and case keyword is replaced by when
# Switch
day = 3
case day
when 1
  puts "Saturday"
when 2
  puts "Sunday"
when 3
  puts "Monday"
when 3
  "No in the list"
end
