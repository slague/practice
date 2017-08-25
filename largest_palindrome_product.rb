# PROJECT EULER
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_pal_product
  nums = Array(100..999).reverse
  test_num = 999
  pals = []
  # pal_prod_hash = {}  if you needed to store the two 3-digit numbers

  while test_num.to_s.length == 3
    nums.each do |arr_num|
      if (arr_num * test_num).to_s == (arr_num * test_num).to_s.reverse
        pals << (arr_num * test_num)
        # p "#{test_num} times #{arr_num} is #{test_num * arr_num} "
        # pal_prod_hash[n] = num
      end
    end
    test_num -= 1
  end
  p pals.max
end

largest_pal_product
