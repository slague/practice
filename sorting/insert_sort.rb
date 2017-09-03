# bubble sort or skinny sort
# Although the algorithm is simple, it is too slow and impractical for most problems even when compared to insertion sort.
# It can be practical if the input is usually in sorted order but may occasionally have some out-of-order elements nearly in position.
# Bubble sort has worst-case and average complexity both О(n2), not a practical sorting algorithm when n is large.
#
# The only significant advantage that bubble sort has over most other implementations, even quicksort, but not insertion sort, is that the ability to detect that the list is sorted efficiently is built into the algorithm. When the list is already sorted (best-case), the complexity of bubble sort is only O(n). By contrast, most other algorithms, even those with better average-case complexity, perform their entire sorting process on the set and thus are more complex. However, not only does insertion sort have this mechanism too, but it also performs better on a list that is substantially sorted (having a small number of inversions).
#
# Bubble sort should be avoided in the case of large arrays. It will not be efficient in the case of a reverse-ordered collection.


def bubble_sort(collection)
  require "pry"; binding.pry
  swap = true

  until swap == false
    previous = 0
    current = previous + 1
    swap = false

    while current <= collection.length #while current is less than or equal the length of the array keep doing this

      if collection[previous] > collection[current]
        previous_bubble = collection[previous]
        current_bubble = collection[current]
        collection[previous] = current_bubble
        collection[current] = previous_bubble
        swap = true
      end

      previous = previous + 1
      current = current + 1
    end
  end
end

puts bubble_sort([3, 1, 4, 2])
puts "cats"

# def bubble_sort(array)
#   len = array.length
#
#   loop do
#     swapped = false
#
#     (len-1).times do |i|
#       if array[i] > array[i+1]
#         array[i], array[i+1] = array[i+1], array[i]
#         swapped = true
#       end
#     end
#
#     break if swapped == true
#   end
#
#   array
# end
