# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?


#step 1 find the factors of the num
#step 2 determine which of those factors are prime
#steph 3return the greatest of those prime numbers

require "prime"
# TOO SLOW after awhile
# def greatest_prime_factor_finder(num)
#   nums = Array(1..num)
#   factors = nums.select do |n|
#     num % n == 0
#   end
#   # p factors
#   primes = factors.select do |fact|
#     fact.prime?
#   end
#   p primes.last
# end



def greatest_prime_factor_finder(num)
  try = 3

  while (num >= try) do
    if (try.prime? && (num % try == 0))
      max_prime = try
      num = num / try
    else
      try = try + 2
    end
  end

  puts max_prime
end

greatest_prime_factor_finder(12)
greatest_prime_factor_finder(13195)
greatest_prime_factor_finder(600851475143)
