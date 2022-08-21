=begin
 -- Ruby blocks are called closures in other programming languages 
 * Block contains a chunk of code enclosed with {} or do..end (The {} baces syntax higher preference
than do..end )
 * The block is always invoked from a method/function.
 * To invoke a block , we must have a method/function with same name of the block.
 * Blocks also can have their own arguments.

 Blocks/Closure written in two ways.
  1) Multiline block are written with do..end syntax
  2) Inline block are written with {} baces syntax

  * Normally yield statement is used to call a block from a functin.
=end


# Block without parameters (ith yield statement)

puts "Block without Parameters:"
def call_block
  puts "Start Method"
  yield
  puts "End Method"
end

call_block {
   puts "Inside Block"
 }

 # Block with parameters (yield ith paramters)
puts "Block with Parameters:"
def test_block
   puts "Start Method"
   yield("Shishir", 28)
   puts "End Method"
end

test_block { |name, age|
    puts "Inside Block" + ": Hi #{name}. You are #{age} years old."
 }


 # Passing block as parameters
 puts "\nPassing block as parameters:"
 def test(&block)
   block.call
 end

 test {
   puts "Inside block"
 }

=begin
  
BEGIN and END blocks:
-------------------------
Every ruby source file can declare block of code to be run at the beginning the file loaded with
BEGIN block
As well as after the program finished executing with END block

a prgram may have multiple BEGIN or END block. in case of BEGIN the block are executed in the ordered 
  they were encountered. 
  but in case of END it is reveres order

=end


BEGIN {
  puts ".......................file execution BEGIN 1"
}

BEGIN {
  puts ".........................BEGIN 2"
}

END {
  puts "...........................END 2"
}

END {
  puts  "................... file execution END 1"
}