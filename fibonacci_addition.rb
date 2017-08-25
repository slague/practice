# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

# **PROJECT EULER**

# step 1 find fib items below 4,000,000

def fib_arry
  arr = [1, 1]
  a = 0
  b = 1
  while arr[a] + arr[b] <= 4000000
      arr << (arr[a] + arr[b])
    a += 1
    b += 1
  end
  # step 2 determine which are even
  evens = arr.select { |num| num.even? }
  # step 3 sum
  puts "This is the sum of all even fibonacci numbers less than 4,000,000:  #{evens.reduce(:+)}"
end

fib_arry
