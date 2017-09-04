# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# 232792560


def one_to_twenty_wo_remainder

  int = 20
  array = (1..20)

  until array.all? { |num| int % num == 0 }
    int +=20
  end

  
  # array = Array(1..20).reverse
  # smallest_div = (array[0] * array[1])
  # index = 2
  #
  # loop do
  #   # require "pry"; binding.pry
  #   if array.all? { |num|  smallest_div % num == 0 }
  #     return smallest_div
  #   else
  #     smallest_div *= array[index]
  #     index += 1
  #   end
  # end
end



p one_to_twenty_wo_remainder
