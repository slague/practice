# The   merge sort   is a recursive sort of order   n*log(n).

# It is notable for having a worst case and average complexity of   O(n*log(n)),   and a best case complexity of   O(n)   (for pre-sorted input).

# The basic idea is to split the collection into smaller groups by halving it until the groups only have one element or no elements   (which are both entirely sorted groups).

# Then merge the groups back together so that their elements are in order.

# This is how the algorithm gets its   divide and conquer   description -- a sort function and a merge function


def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  left = merge_sort(array[0...middle])
  right = merge_sort(array[middle..-1])
  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  # require "pry"; binding.pry
  result + left + right
end

arr = [7,6,5,9,8,4,3,1,2,0]
p merge_sort(arr)
