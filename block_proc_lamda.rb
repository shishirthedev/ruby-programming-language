=begin

proc ==========================
in three ways we can define a proc ====
1.  proc {}
2.  Proc.new {}
3.  Proc.new do
    end

[all are equivalent]


lamda======================
in two ways we can define a lamda ========
lamda {

}
or
-> {

}
lamda is something like a extention of proc. lamda also return a proc.

lamda{

}

and 

Proc.new {

}

both are equivalent.


Differences between Procs and Lambdas =======================================

Before I get into the differences between procs and lambdas, it is important to mention that they are both Proc objects.

proc = Proc.new { puts "Hello world" }
lam = lambda { puts "Hello World" }

proc.class # returns 'Proc'
lam.class  # returns 'Proc'



However, lambdas are a different ‘flavor’ of procs----------
1. lamda checks the number of arguments passed to it while proc does not. This means lamda will
    throw exception if we pass it a wrong number of arguments.
    whereas proc will ignore unexpected arguemnts and assign nil to any other arguments that are
    missing.

2. Second, when a lambda returns, it passes control back to the calling method; when a proc returns,
 it does so immediately, without going back to the calling method.


 # Proc Examples ===========

p = Proc.new { |x| puts x*2 }
[1,2,3].each(&p)              # The '&' tells ruby to turn the proc into a block 

proc = Proc.new { puts "Hello World" }
proc.call

# Lambda Examples ===========

lam = lambda { |x| puts x*2 }
[1,2,3].each(&lam)

lam = lambda { puts "Hello World" }
lam.call     
    
=end


# ====================================================
# Proc Examples

p = Proc.new { |x| puts x*2 }
[1,2,3].each(&p)              # The '&' tells ruby to turn the proc into a block 

proc = Proc.new { puts "Hello World" }
proc.call
# Lambda Examples

lam = lambda { |x| puts x*2 }
[1,2,3].each(&lam)

lam = lambda { puts "Hello World" }
lam.call           
Differences between Procs and Lambdas

Before I get into the differences between procs and lambdas, it is important to mention that they are both Proc objects.

proc = Proc.new { puts "Hello world" }
lam = lambda { puts "Hello World" }

proc.class # returns 'Proc'
lam.class  # returns 'Proc'
However, lambdas are a different ‘flavor’ of procs. This slight difference is shown when returning the objects.

proc   # returns '#<Proc:0x007f96b1032d30@(irb):75>'
lam    # returns '<Proc:0x007f96b1b41938@(irb):76 (lambda)>'
1. Lambdas check the number of arguments, while procs do not

lam = lambda { |x| puts x }    # creates a lambda that takes 1 argument
lam.call(2)                    # prints out 2
lam.call                       # ArgumentError: wrong number of arguments (0 for 1)
lam.call(1,2,3)                # ArgumentError: wrong number of arguments (3 for 1)
In contrast, procs don’t care if they are passed the wrong number of arguments.

proc = Proc.new { |x| puts x } # creates a proc that takes 1 argument
proc.call(2)                   # prints out 2
proc.call                      # returns nil
proc.call(1,2,3)               # prints out 1 and forgets about the extra arguments
2. Lambdas and procs treat the ‘return’ keyword differently

‘return’ inside of a lambda triggers the code right outside of the lambda code

def lambda_test
  lam = lambda { return }
  lam.call
  puts "Hello world"
end

lambda_test                 # calling lambda_test prints 'Hello World'
‘return’ inside of a proc triggers the code outside of the method where the proc is being executed

def proc_test
  proc = Proc.new { return }
  proc.call
  puts "Hello world"
end

proc_test                 # calling proc_test prints nothing


# lamdas is proc with some additional extra facility and lamda acts as like as method.
# as lamda check the arguments and return the value as method do.



=begin
In Ruby, a proc is an instance of the Proc class and is similar to a block.
Proc is like as block. we can not stored block in a variable to reuse but in case of proc we can
    store in a variable and reuse that proc.
Proc also let us call method on it.
but proc is a way make block reusable. 

we can create store proc in a variable and then pass the proc as a block in function argument.
    
=end


# Ruby .call Method
# In Ruby, a proc and a lambda can be called directly using the .call method.