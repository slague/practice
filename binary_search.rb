
def binary_search(arr, item)
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

puts binary_search(my_list, 3)
puts binary_search(my_list, 12)
