# A left rotation operation on an array of size  shifts each of the array's elements  unit to the left. For example, if  left rotations are performed on array , then the array would become .
#
# Given an array of  integers and a number, , perform  left rotations on the array. Then print the updated array as a single line of space-separated integers.
#
# Input Format
#
# The first line contains two space-separated integers denoting the respective values of  (the number of integers) and  (the number of left rotations you must perform).
# The second line contains  space-separated integers describing the respective elements of the array's initial state.
#
# Constraints
#
# Output Format
#
# Print a single line of  space-separated integers denoting the final state of the array after performing  left rotations.
#
# Sample Input
#
# 5 4
# 1 2 3 4 5
# Sample Output
#
# 5 1 2 3 4
# Explanation
#
# When we perform  left rotations, the array undergoes the following sequence of changes:
#
# Thus, we print the array's final state as a single line of space-separated values, which is 5 1 2 3 4.
n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

def left_rotation(array_length, rotations, array)
    # array = Array(1..array_length)

    (rotations).times do
      array << array[0]
      array.shift
      array
    end
  string = ""
  array.each do |num|
    string << "#{num} "
  end
  string.rstrip.prepend("\"") + "\""
  string.gsub!('"', '')
  puts string
end

 left_rotation(n, k, a)
