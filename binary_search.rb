# This method returns the index of the item in the array

def binary_search(arr, item)
  arr = arr.sort
  # The array must be sorted!
  # see other practice files for other ways to sort the array!
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high)/2
    guess = arr[mid]

    if guess == item
      return mid
    end
    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return "None"
end

my_list = [1, 3, 5, 7, 9]

my_unsorted_array = [3, 2, 7, 5, 1, 6, 9, 8]

puts binary_search(my_list, 3)
puts binary_search(my_list, 9)
puts binary_search(my_list, 12)
puts binary_search(my_unsorted_array, 1)
puts binary_search(my_unsorted_array, 9)
puts binary_search(my_unsorted_array, 12)
