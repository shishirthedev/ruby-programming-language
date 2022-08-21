# This is similer to Hash Map
=begin
A Ruby hash is a collection of unique keys and their values.
They are similar to arrays but array use integer as an index and hash use any object type.
They are also called associative arrays, dictionaries or maps.

Syntax is :

name = {"key1" => "value1", "key2" => "value2", "key3" => "value3"...}

=end

# Creating a ruby hash

color = {
  "rose" => "Red",
  "lily" => "Purpule"
}

puts color["rose"]


# Modifying ruby hash
color["rose"] = "White"
puts "After Modified: #{color["rose"]}"


# Iterate with Hash
color.each do |key, value|
  puts "#{key}: #{value}"
end


# Check is Hash is empty
if color.empty?
  puts "Empty"
else puts "Not Empty"
end


# Check if has the key or value
if(color.has_key?("rose"))
  puts "Has the key Rose"
end

# OR
if(color.include? "rose")
  puts "Has the key ROse by Include"
end


if(color.has_value? "Red")
  puts "Has the value Red"
else
  puts "No value Red"
end

color.delete "rose"
puts color.include? "rose"

puts color.size
color.clear
puts color.size
