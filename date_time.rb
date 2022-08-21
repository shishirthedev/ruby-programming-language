require 'date'

# Both Time.new and Time.now are same to get current date time
time_new = Time.new
puts time_new

time_now = Time.now
puts time_now

# Get individual data from time
puts "#{time_now.year}-#{time_now.month}-#{time_now.day} #{time_now.hour}:#{time_now.min}:#{time_now.sec}"

# Formatting time
=begin
%A = Full day name
%a = short day name
%B = Full month name
%b = Short month name
%d = day number of month
%m = month number of the year
%Y = year
%p = am,pm
%z = time zone
=end
puts time_now.strftime("%Y-%m-%d %H:%M:%S")

# Time arethmetic
puts "Time Arethmetic:"
now = Time.now
past = now - 10
future = now + 10
diff = future - past
puts "Past: #{past}"
puts "Future: #{future}"
puts "Diff: #{diff}"
