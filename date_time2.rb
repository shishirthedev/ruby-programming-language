require 'date'
=begin
* Time
* Date
* DateTime

* Here Time and DateTime implementation is same
  so we will practise Time and Date Class >>>>
* and DateTime is a subclass of Date class

=end
time = Time.new(2022,2,17,17,30, 10)
puts time

time = Time.new(2022, 2, 17, 17, 30)
puts time

time = Time.new(2022, 2, 17, 17)
puts time

time = Time.new(2022, 2, 17)
puts time

time = Time.new(2022, 2)
puts time

time = Time.new(2022)
puts time

time = Time.new
puts time

puts "#{time.day}-#{time.month}-#{time.year}"

# Day number
puts "Day number: #{time.yday}"

# Chck the Day
puts "Is Sunday Today: #{time.sunday?}"

# Seconds After the epoch
puts "Seconds after the epoch: #{time.to_i}"

# Seconds and milli seconds after the epoch
puts "Second and MilliSecond after the epoch: #{time.to_f}"

# Compare two time
time1 = time + 10
puts time.eql? time1
puts time == time1
puts time <=> time1


=begin
 Remember:
 Time.new gives the current time
 but Date.new does not give the current time. Rather it gives a garbase values.
=end

# Date
puts "\nDate Practise: "
dt = Date.new(2022, 2, 17)
puts "With New: #{dt.year}-#{dt.month}-#{dt.day}"

# Parse a string as date
=begin
 * Parse format is yyyy-MM-dd or yyyy/MM/dd or yyyy.MM.dd or day Month_Name Year
=end
dt = Date.parse("17 Feb 2022")
puts "With Parsed: #{dt.year}-#{dt.month}-#{dt.day}"


# Time to Date
dt = Time.new(2022,2, 17).to_date
puts "Time to Date: #{dt}"
