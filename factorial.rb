# recursion practice ... find more practice in this!

# method for solving factorials using recursion
def fact(x)
  if x == 1
    1
  else
    x * fact(x-1)
  end
end


p fact(3)
p fact(5)
p fact(100)
