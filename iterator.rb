=begin
 Iterator is a concept used in object-oriented language.
 Iteration means doing one thing many times like a loop.\
 * Each
 * Times
 * Upto
 * DownTo
 * Step
 * Each Line
=end


# Ruby Each Iterator
#--------------------------------
#The Ruby each iterator returns all the elements from a hash or array.
=begin

Syntax is :
-----------------
(collection).each do |variable|
  code...
end

=end
puts "Each Iterator"
(1..5).each do |i|
  puts i
end


#Ruby Times Iterator
#-----------------------------------
#A loop is executed specified number of times by the times iterator.
#Loop will start from zero till one less than specified number.

=begin

Syntax is:

x.times do |variable|
  code...
en

=end

puts "Times Iterator:"
5.times do |i|
  puts i
end


# UpTo iterator
puts "UpTo Iterator"
1.upto(5) do |i|
  puts i
end


# Down To Iterator
puts "DownTo Iterator"
5.downto(1) do |i|
  puts i
end


# Step Iterator
puts "Step Iterator"
(1..10).step(2) do |i|
  puts i
end


# Each Line Iterator
puts "Each Line Iterator"
"A\nB\nC\nD".each_line do |line|
  puts line
end
