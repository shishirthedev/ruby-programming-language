# puts "using range ==============="
# (1..3).each {
#     puts "hi"
# }

# puts "using upto ==========="
# 1.upto(3) {
#     puts "hi"
# }
 
# puts "using downto ============"
# 4.downto 1 do |i|
#     puts i
# end


# puts "each line ================"
# "a\nb\nc".each_line {|line| puts line}


# puts "using select ================"
# names = ["Shishir", "Shikto", "Rafi", "Kanti"]
# puts names.select {|name| name.start_with? 'S'}

# str1 = "hi"
# str2 = ", I am shishir"
# puts str1 + str2
# puts str1 << str2
# puts str1.concat str2
# age = 28
# puts "I am #{age} years old"

# name = "Shishir"
# puts name
# # puts name[0]
# # puts name[0...1]
# puts name[0,2]

puts :airtel.casecmp(:airtel).zero?
