# recursion practice ... find more practice in this!
# num is the place in the sequence... in other words what is the 8th fib number, or the 2nd or, 100th, etc.


# SIMPLEST, BREAKS AROUND 14 or 15...
# def fib(num)
#   if num <= 1
#     return num
#   else
#     fib( num - 1 ) + fib( num - 2 )
#   end
#
# end




# GETS MUCH FURTHER, BUT STILL EVENTUALLY BREAKS  run time grows exponentially in...

# def fib(num, memo = {})
#   if num <= 1
#     return num
#   end
#   memo[num] ||= fib(num-1, memo) + fib(num-2, memo)
# end



# EVENTURALLY BREAKS, TOO O(n) run time, O(n) storage
# def fib_memo(num, memo)
#   memo[num] ||= fib_memo(num - 1, memo) + fib_memo(num - 2, memo)
# end
#
# def fib(num)
#   raise "fib not defined for negative numbers" if num < 0
#   fib_memo(num, [0, 1])
# end



# Constructive [O(n) run time, O(1) storage
def fib(num)
  raise "fib not defined for negative numbers" if num < 0
  a, b = 1, 0
  num.times {a, b = a + b, a}
  b
end

# p fib(-1)
# p fib(2)
# p fib(3)
# p fib(4)
p fib(5)
p fib(10)
p fib(68)
# p fib(100)
# p fib(1000)
# p fib(5000)
# p fib(8000)
# p fib(10000)
# p fib(100000)
p fib(1000000)
# p fib(1000000000)
