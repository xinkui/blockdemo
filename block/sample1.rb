#block
def call_block_twice
  yield
  yield
  puts "inside"
end

call_block_twice { puts "block"}


#Proc
my_proc = Proc.new {puts "proc"}

call_block_twice{ my_proc.call }

#lambda

my_lambda = -> { puts "lambda"}

call_block_twice {my_lambda.call}