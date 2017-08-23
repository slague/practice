# **PROJECT EULER**

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.


def sum_multiples_of_3_and_5(num)

  arr = Array(0..(num-1))

  keep = arr.select do  |n|
    n % 3 == 0 || n % 5 == 0
  end

puts keep.reduce(:+)

end


sum_multiples_of_3_and_5(10)
sum_multiples_of_3_and_5(1000)
