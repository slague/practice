=begin
Write a function that converts an integer into a string
such that the number is represented in Roman Numerals in
the most efficient way.

eg, the number 4 could be written as 'IIII' but it's
more efficient to use 'IV' since that's a shorter string

Assume no number is greater than 4,000
M=1000,D=500,C=100,L=50,X=10,V=5,I=1

=end



def to_roman(num)
    result = ''

    map = [
        ["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], ["C", 100],
        ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9],
        ["V", 5], ["IV", 4], ["I", 1],
    ]

    map.each do |pair|
      while num >= pair[1]
        result += pair[0]
        num -= pair[1]
        break if num <= 0
      end
    end
    result
end


puts 'case 0 failed' if to_roman(3) != 'III'
puts 'case 0 failed' if to_roman(4) != 'IV'
puts 'case 1 failed' if to_roman(128) != 'CXXVIII'
puts 'case 2 failed' if to_roman(2000) != 'MM'
puts 'case 3 failed' if to_roman(2017) != 'MMXVII'
puts 'case 4 failed' if to_roman(1999) != 'MCMXCIX'
