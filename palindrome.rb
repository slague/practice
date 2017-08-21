# Write a program to return a count of all the years (up to this current year) that are palindromes. A palindrome is something that’s the same forwards as it is backwards. For example, 22 is a palindrome, 500 is not a palindrome, and 3003 is a palindrome. We’ll assume all single digit numbers are palindromes. NO .reverse!

years = (0..2017)

pals = []

years.each do |year|
  backward = []
  forward = year.to_s.chars
    forward.each { |num| backward.unshift(num) }
    if backward == forward
      pals << year
    end
  end

  # p "#{pals}"
  p "Number of palindrome years: #{pals.count}"
